import 'package:chateo_eela_2025/ui/auth/bloc/auth_bloc.dart';
import 'package:chateo_eela_2025/ui/chat/bloc/chat_bloc.dart';
import 'package:chateo_eela_2025/ui/chat/widgets/message_item.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Messages extends StatefulWidget {
  const Messages({
    super.key,
    required this.name,
    required this.photoUrl,
    required this.contacId,
  });

  final String name;
  final String contacId;
  final String? photoUrl;

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    context.read<ChatBloc>().add(GetMessagesEvent(contactId: widget.contacId));
  }

  @override
  Widget build(BuildContext context) {
    final authState = context.read<AuthBloc>().state;
    final user = authState is AuthStateLoggedIn ? authState.user : null;

    return BlocConsumer<ChatBloc, ChatState>(
      // listenWhen: (previous, current) =>
      //     (previous.messages.length == current.messages.length) &&
      //     previous.messages.isNotEmpty,
      listener: (context, state) {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        });
      },
      builder: (context, state) {
        if (state.messages.isEmpty) {
          return Center(child: Text('Envia tu primer mensaje'));
        }

        return ListView.builder(
          controller: _scrollController,
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 80),
          itemCount: state.messages.length,
          itemBuilder: (context, index) {
            final message = state.messages[index];

            return MessageItem(
              mySelf: message.sentyBy == user?.uid,
              userName: widget.name,
              msg: message.message ?? '',
              date: message.messageDate,
              photoUrl: widget.photoUrl,
            );
          },
        );
      },
    );
  }
}
