import 'package:chateo_eela_2025/data/repositories/messages/messages_repository.dart';
import 'package:firebase_database/firebase_database.dart';

class MessagesRepositoryImpl extends MessagesRepository {
  final _firebaseDatabase = FirebaseDatabase.instance;

  @override
  Future<void> sendMessage(
    String chatId,
    String message,
    String date,
    String sentyBy,
  ) {
    return _firebaseDatabase.ref('chats').child(chatId).push().set({
      'message': message,
      'messageDate': date,
      'sentBy': sentyBy,
    });
  }
}
