import 'package:chateo_eela_2025/domain/models/contact.dart';
import 'package:chateo_eela_2025/ui/core/navigation/app_navigator.dart';
import 'package:chateo_eela_2025/ui/core/ui/colors.dart';
import 'package:chateo_eela_2025/ui/core/ui/widgets/chat_avatar.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final status = (contact.status) ? 'Online' : 'Offline';
    final colorStatus = contact.status ? Colors.green : Colors.red;

    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, AppNavigator.chat, arguments: contact);
      },
      leading: ChatAvatar(name: contact.name ?? '', photoUrl: contact.photoUrl),
      title: Text(contact.name ?? ''),
      subtitle: Text(status, style: TextStyle(color: AppColors.darkGrey)),
      trailing: SizedBox(
        width: 12,
        height: 12,
        child: DecoratedBox(
          decoration: BoxDecoration(shape: BoxShape.circle, color: colorStatus),
        ),
      ),
    );
  }
}
