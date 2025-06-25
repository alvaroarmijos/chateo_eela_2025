import 'package:chateo_eela_2025/ui/core/ui/colors.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => {},
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
          'https://photo-cdn2.icons8.com/OCUxgrB3qzbk934tC2nTmEl7VlvF-7f3LJ1fQ9HFuZA/rs:fit:576:384/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi82ODE1ODM3MTQ5/YTI0ZmE2YmEzYzBm/Njg0MDMyZjJlMy5q/cGc.webp',
        ),
      ),
      title: const Text('name'),
      subtitle: Text('Online', style: TextStyle(color: AppColors.darkGrey)),
      trailing: const SizedBox(
        width: 12,
        height: 12,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
