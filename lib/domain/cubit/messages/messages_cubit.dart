import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation/chat/widgets/message_line.dart';

part 'messages_state.dart';

class MessagesCubit extends Cubit<MessagesState> {
  MessagesCubit() : super(MessagesInitial());

  static MessagesCubit get(BuildContext context) => BlocProvider.of(context);

  List<MessageLine> messages = [
    const MessageLine(
      isMe: true,
      text: "hi",
    ),
    const MessageLine(
      isMe: false,
      text: "hey dude, how you doing",
    ),
    const MessageLine(
      isMe: true,
      text: "thanks, I'm fine",
    ),
  ];
  int messageNumber = 0;
  void addMessage({required bool isMe, required String text}) {
    messages.add(MessageLine(
      isMe: isMe,
      text: text,
    ));
    emit(AddMessageState(messageNumber));
    messageNumber++;
  }
}
