import 'package:mint/domain/entity/message.dart';

import 'package:mint/domain/services/chat_service.dart';

abstract class GetMessagesUseCase {
  GetMessagesUseCase();

  Stream<List<Message>> call();
}

class FirestoreGetMessagesUseCase implements GetMessagesUseCase {
  FirestoreGetMessagesUseCase(this._service);
  final ChatService _service;

  @override
  Stream<List<Message>> call() {
    return _service.getMessages();
  }
}
