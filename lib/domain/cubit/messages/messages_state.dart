part of 'messages_cubit.dart';

abstract class MessagesState extends Equatable {
  const MessagesState();

  @override
  List<Object> get props => [];
}

class MessagesInitial extends MessagesState {}

class AddMessageState extends MessagesState {
  final int messageNumber;

  const AddMessageState(this.messageNumber);

  @override
  List<Object> get props => [messageNumber];
}
