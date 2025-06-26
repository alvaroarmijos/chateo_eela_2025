import 'package:chateo_eela_2025/data/repositories/contacts/contacts_repository.dart';
import 'package:chateo_eela_2025/domain/models/contact.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class ContactsRepositoryImpl extends ContactsRepository {
  final _firebaseDatabase = FirebaseDatabase.instance;

  @override
  Stream<List<Contact>> getContacts() {
    // final response = await _firebaseDatabase.ref('contacts').get();
    return _firebaseDatabase.ref('contacts').onValue.map((event) {
      final value = event.snapshot.value as Map?;
      return value?.values.map((element) {
            return Contact(
              name: element["name"],
              photoUrl: element["photoUrl"],
              status: element["status"],
            );
          }).toList() ??
          [];
    });
  }

  @override
  Future<void> updateUserStatus(User user, bool status) {
    return _firebaseDatabase.ref('contacts').child(user.uid).update({
      'name': user.displayName,
      'photoUrl': user.photoURL,
      'status': status,
      'userId': user.uid,
    });
  }
}
