import 'dart:io';

import 'package:mint/domain/services/chat_service.dart';

abstract class SendImageMessageUseCase {
  SendImageMessageUseCase();

  Future<void> call(File file, String doctorId);
}

class FirestoreSendImageMessageUseCase implements SendImageMessageUseCase {
  FirestoreSendImageMessageUseCase(this.service);
  final ChatService service;
  @override
  Future<void> call(
    File file,
    String doctorId,
  ) async {
    await service.sendImageMessage(file, doctorId);
  }
}
