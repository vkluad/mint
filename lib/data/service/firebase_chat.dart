import 'dart:io';

import 'package:mint/data/gateway/firebase_chat_gateway.dart';

import 'package:mint/domain/entity/message.dart';

import 'package:mint/domain/services/chat_service.dart';

class FirebaseChatService implements ChatService {
  FirebaseChatService(this._gateway);

  final FirebaseChatGateway _gateway;
  @override
  Future<void> sendMessage({
    required String msg,
    required DateTime sent,
    required String fromId,
    required String toId,
    required String type,
  }) async {
    try {
      await _gateway.sendMessage(
        msg: msg,
        sent: sent,
        fromId: fromId,
        type: type,
        toId: toId,
      );
    } catch (e) {
      throw Exception('Failed to send message.');
    }
  }

  @override
  Future<void> sendImageMessage(File file, String doctorId) async {
    try {
      await _gateway.sendImageMessage(file, doctorId);
    } catch (e) {
      throw Exception('Failed to send message.');
    }
  }

  @override
  Future<void> updateMessageStatus(String messageId) async {
    try {
      await _gateway.updateMessageStatus(messageId);
    } catch (e) {
      throw Exception('Failed to update message status.');
    }
  }

  @override
  Stream<List<Message>> getMessages() {
    return _gateway.getMessages();
  }
}
