part of 'home_bloc.dart';

class HomeState {
  final List<Contact> contacts;

  HomeState({this.contacts = const []});

  HomeState copyWith({List<Contact>? contacts}) {
    return HomeState(contacts: contacts ?? this.contacts);
  }
}
