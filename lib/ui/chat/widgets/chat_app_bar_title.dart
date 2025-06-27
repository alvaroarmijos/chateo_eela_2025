import 'package:chateo_eela_2025/ui/core/ui/widgets/chat_avatar.dart';
import 'package:flutter/material.dart';

class ChatAppBarTitle extends StatelessWidget {
  const ChatAppBarTitle({
    super.key,
    // required this.contact,
  });

  // final Contact contact;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        const Stack(
          alignment: Alignment.bottomRight,
          children: [
            ChatAvatar(
              name: 'A A',
              // urlImage: contact.photoUrl,
            ),
            SizedBox(
              width: 12,
              height: 12,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: contact.status ? Colors.green : Colors.red,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListTile(
            title: Text(
              // contact.name,
              'Name',
              style: textTheme.labelLarge,
            ),
            subtitle: Text(
              // contact.status ? 'Active now' : 'Offline',
              'Active now',
              style: textTheme.bodySmall,
            ),
          ),
        ),
      ],
    );
  }
}
