import 'package:mint/domain/services/chat_service.dart';

abstract class UpdateMessageStatusUseCase {
  UpdateMessageStatusUseCase();

  Future<void> call(
    String messageId,
  );
}

class FirestoreUpdateMessageStatusUseCase
    implements UpdateMessageStatusUseCase {
  FirestoreUpdateMessageStatusUseCase(this.service);
  final ChatService service;
  @override
  Future<void> call(
    String messageId,
  ) async {
    await service.updateMessageStatus(messageId);
  }
}
