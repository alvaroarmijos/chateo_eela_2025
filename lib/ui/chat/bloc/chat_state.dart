part of 'chat_bloc.dart';

class ChatState {
  final List<Message> messages;

  ChatState({this.messages = const []});

  ChatState copyWith({List<Message>? messages}) {
    return ChatState(messages: messages ?? this.messages);
  }
}
