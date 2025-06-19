part of 'sign_up_cubit.dart';

class SignUpState {
  final String? name;
  final String? email;
  final String? password;
  final String? confirmPassword;
  final bool passwordMatch;

  SignUpState({
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
    this.passwordMatch = true,
  });

  // methodo copyWith para crear copias de la clase
  SignUpState copyWith({
    String? name,
    String? email,
    String? password,
    String? confirmPassword,
    bool? passwordMatch,
  }) {
    return SignUpState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      passwordMatch: passwordMatch ?? this.passwordMatch,
    );
  }
}
