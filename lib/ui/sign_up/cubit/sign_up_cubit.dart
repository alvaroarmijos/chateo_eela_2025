import 'package:bloc/bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpState());

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
      state.copyWith(confirmPassword: confirmPassword, passwordMatch: isMatch),
    );
  }

  void createAccount() {
    print('createAccount');
    print(state.name);
    print(state.email);
    print(state.password);
    print(state.confirmPassword);
  }
}
