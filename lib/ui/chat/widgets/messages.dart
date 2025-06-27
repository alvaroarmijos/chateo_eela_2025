import 'package:chateo_eela_2025/ui/chat/widgets/message_item.dart';
import 'package:flutter/widgets.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        MessageItem(
          mySelf: true,
          userName: 'userName',
          msg: 'msg asdfasdf asdfasdf adsfasd asdfa sfs asdfasdf',
          date: DateTime.now(),
        ),
        MessageItem(
          mySelf: false,
          userName: 'userName',
          msg: 'msg asdfas dfasdf asdf asdfadsf fasdfa asdfasdfasdf ',
          date: DateTime.now(),
        ),
        MessageItem(
          mySelf: false,
          userName: 'userName',
          msg: 'msg asdfas dfasdf asdf asdfadsf fasdfa asdfasdfasdf ',
          date: DateTime.now(),
        ),
        MessageItem(
          mySelf: false,
          userName: 'userName',
          msg: 'msg asdfas dfasdf asdf asdfadsf fasdfa asdfasdfasdf ',
          date: DateTime.now(),
        ),
        MessageItem(
          mySelf: false,
          userName: 'userName',
          msg: 'msg asdfas dfasdf asdf asdfadsf fasdfa asdfasdfasdf ',
          date: DateTime.now(),
        ),
        MessageItem(
          mySelf: false,
          userName: 'userName',
          msg: 'msg asdfas dfasdf asdf asdfadsf fasdfa asdfasdfasdf ',
          date: DateTime.now(),
        ),
      ],
    );
  }
}
