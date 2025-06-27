part of 'profile_cubit.dart';

sealed class ProfileState {}

final class ProfileStateLoading extends ProfileState {}

final class ProfileStateLoggedIn extends ProfileState {
  final User user;
  ProfileStateLoggedIn({required this.user});
}
