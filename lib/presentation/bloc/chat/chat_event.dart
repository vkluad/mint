part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage({
    required String msg,
    required DateTime sent,
    required String fromId,
    required String toId,
    required String type,
  }) = SendMessageEvent;
  const factory ChatEvent.sendImageMessage(
    File file,
    String doctorId,
  ) = SendImageMessageEvent;
  const factory ChatEvent.getMessages() = GetMessagesEvent;
  const factory ChatEvent.updateMessageStatus(
    String msgId,
  ) = UpdateMessageStatusEvent;
}
