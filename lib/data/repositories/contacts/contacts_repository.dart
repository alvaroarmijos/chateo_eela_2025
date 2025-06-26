import 'package:chateo_eela_2025/domain/models/contact.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class ContactsRepository {
  // Obtener la lista de contactos
  Stream<List<Contact>> getContacts();

  // Actualizar el estatus del contacto
  Future<void> updateUserStatus(User user, bool status);
}
