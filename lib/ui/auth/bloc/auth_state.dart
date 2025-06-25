part of 'auth_bloc.dart';

sealed class AuthState {}

final class AuthStateLoading extends AuthState {}

final class AuthStateLoggedIn extends AuthState {
  final User user;

  AuthStateLoggedIn({required this.user});
}

final class AuthStateLoggedOut extends AuthState {}

final class AuthStateUknow extends AuthState {}
