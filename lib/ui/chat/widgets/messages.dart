import 'package:chateo_eela_2025/ui/chat/widgets/message_item.dart';
import 'package:flutter/widgets.dart';

class Messages extends StatelessWidget {
  const Messages({super.key, required this.name, required this.photoUrl});

  final String name;
  final String? photoUrl;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        MessageItem(
          mySelf: true,
          userName: name,
          photoUrl: photoUrl,
          msg: 'msg asdfasdf asdfasdf adsfasd asdfa sfs asdfasdf',
          date: DateTime.now(),
        ),
        MessageItem(
          mySelf: false,
          userName: name,
          photoUrl: photoUrl,
          msg: 'msg asdfas dfasdf asdf asdfadsf fasdfa asdfasdfasdf ',
          date: DateTime.now(),
        ),
        MessageItem(
          mySelf: false,
          userName: name,
          photoUrl: photoUrl,
          msg: 'msg asdfas dfasdf asdf asdfadsf fasdfa asdfasdfasdf ',
          date: DateTime.now(),
        ),
        MessageItem(
          mySelf: false,
          userName: name,
          photoUrl: photoUrl,
          msg: 'msg asdfas dfasdf asdf asdfadsf fasdfa asdfasdfasdf ',
          date: DateTime.now(),
        ),
      ],
    );
  }
}
