import 'dart:io';

import 'package:mint/domain/entity/message.dart';

abstract class ChatService {
  Stream<List<Message>> getMessages();
  Future<void> sendMessage({
    required String msg,
    required DateTime sent,
    required String fromId,
    required String toId,
    required String type,
  });
  Future<void> sendImageMessage(File file, String doctorId);
  Future<void> updateMessageStatus(
    String messageId,
  );
}
