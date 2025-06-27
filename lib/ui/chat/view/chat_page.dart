import 'package:chateo_eela_2025/domain/models/contact.dart';
import 'package:chateo_eela_2025/ui/chat/widgets/chat_app_bar_title.dart';
import 'package:chateo_eela_2025/ui/chat/widgets/chat_text_form_field.dart';
import 'package:chateo_eela_2025/ui/chat/widgets/messages.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    // Obtener los argumentos que se envian en la Ruta
    final contact = ModalRoute.of(context)!.settings.arguments as Contact;

    return Scaffold(
      appBar: AppBar(title: ChatAppBarTitle(contact: contact)),
      body: Stack(
        children: [
          // List de mensajes
          Messages(name: contact.name ?? '', photoUrl: contact.photoUrl),
          // Widget
          ChatTextFormField(contactId: contact.userId),
        ],
      ),
    );
  }
}
