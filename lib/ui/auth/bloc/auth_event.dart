part of 'auth_bloc.dart';

sealed class AuthEvent {}

// Evento para emepzar a escuchar si tenemos un usuario logueado
class CheckUserEvent extends AuthEvent {}
