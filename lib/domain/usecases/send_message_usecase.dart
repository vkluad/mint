import 'package:mint/domain/services/chat_service.dart';

abstract class SendMessageUseCase {
  SendMessageUseCase();

  Future<void> call({
    required String msg,
    required DateTime sent,
    required String fromId,
    required String toId,
    required String type,
  });
}

class FirestoreSendMessageUseCase implements SendMessageUseCase {
  FirestoreSendMessageUseCase(this.service);
  final ChatService service;
  @override
  Future<void> call({
    required String msg,
    required DateTime sent,
    required String fromId,
    required String toId,
    required String type,
  }) async {
    await service.sendMessage(
      msg: msg,
      sent: sent,
      fromId: fromId,
      type: type,
      toId: toId,
    );
  }
}
