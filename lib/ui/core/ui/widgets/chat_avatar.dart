import 'package:avatars/avatars.dart';
import 'package:flutter/material.dart';

class ChatAvatar extends StatelessWidget {
  const ChatAvatar({
    super.key,
    this.photoUrl,
    required this.name,
    this.radius = 20,
  });

  final String? photoUrl;
  final String name;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return (photoUrl != null)
        ? CircleAvatar(backgroundImage: NetworkImage(photoUrl!), radius: radius)
        : Avatar(name: name, shape: AvatarShape.circle(radius));
  }
}
