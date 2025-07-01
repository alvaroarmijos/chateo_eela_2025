import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chateo_eela_2025/data/repositories/auth/auth_repository_impl.dart';
import 'package:chateo_eela_2025/data/repositories/messages/messages_repository_impl.dart';
import 'package:chateo_eela_2025/domain/models/message.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final _messagesRepository = MessagesRepositoryImpl();
  final _authRepository = AuthRepositoryImpl();

  ChatBloc() : super(ChatState()) {
    on<SendMessageEvent>(_onSendMessageEvent);
    on<GetMessagesEvent>(_onGetMessagesEvent);
  }

  FutureOr<void> _onSendMessageEvent(
    SendMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    final date = DateTime.now().toIso8601String();
    final user = await _authRepository.currentUser.first;

    if (user == null) return;

    _messagesRepository.sendMessage(
      _getChatId(user.uid, event.sentBy),
      event.message,
      date,
      user.uid,
    );
  }

  String _getChatId(String userId, String contactId) {
    final chatId = [userId, contactId]..sort();
    return '${chatId.first}_ ${chatId.last}';
  }

  FutureOr<void> _onGetMessagesEvent(
    GetMessagesEvent event,
    Emitter<ChatState> emit,
  ) async {
    final user = await _authRepository.currentUser.first;
    if (user == null) return;

    final chatId = _getChatId(user.uid, event.contactId);
    return emit.forEach(
      _messagesRepository.getMessages(chatId),
      onData: (messages) {
        return state.copyWith(messages: messages);
      },
    );
  }
}
