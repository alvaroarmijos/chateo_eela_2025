import 'package:bloc/bloc.dart';
import 'package:chateo_eela_2025/data/repositories/auth/auth_repository_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpState());

  final _authRepository = AuthRepositoryImpl();

  void onNameChanged(String? name) {
    emit(state.copyWith(name: name));
  }

  void onEmailChanged(String? email) {
    emit(state.copyWith(email: email));
  }

  void onPasswordChanged(String? password) {
    emit(state.copyWith(password: password));
  }

  void onConfirmPasswordChanged(String? confirmPassword) {
    final isMatch = confirmPassword == state.password;
    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
        status: isMatch ? Status.initial : Status.passwordMismatch,
      ),
    );
  }

  void createAccount() async {
    try {
      emit(state.copyWith(status: Status.loading));
      await Future.delayed(Duration(seconds: 3));
      await _authRepository.signUp(state.name!, state.email!, state.password!);
      emit(state.copyWith(status: Status.success));
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          emit(state.copyWith(status: Status.passwordTooWeek));
          break;
        case 'email-already-in-use':
          emit(state.copyWith(status: Status.emailAlreadyRegistered));
          break;
        default:
          emit(state.copyWith(status: Status.failed));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failed));
    }
  }
}
