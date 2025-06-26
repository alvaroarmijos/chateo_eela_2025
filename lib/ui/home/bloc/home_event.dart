part of 'home_bloc.dart';

sealed class HomeEvent {}

// Disparar la lectura de la base de datos
class GetContactsEvent extends HomeEvent {}

// Actualizar la información del usuario en los contactos
class UpdateUserStatus extends HomeEvent {
  final bool status;

  UpdateUserStatus({required this.status});
}
