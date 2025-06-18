import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  void onNameChanged(String? name) {
    print('onNameChanged');
    print(name);
  }

  void onEmailChanged(String? email) {
    print('onEmailChanged');
    print(email);
  }

  void onPasswordChanged(String? email) {
    print('onPasswordChanged');
    print(email);
  }

  void onConfirmPasswordChanged(String? email) {
    print('onConfirmPasswordChanged');
    print(email);
  }
}
