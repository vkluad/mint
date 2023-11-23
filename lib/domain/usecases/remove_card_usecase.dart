import 'package:mint/domain/services/cards_service.dart';

abstract class RemoveCardUseCase {
  RemoveCardUseCase();

  Future<void> call(
    String cardId,
  );
}

class FirestoreRemoveCardUseCase implements RemoveCardUseCase {
  FirestoreRemoveCardUseCase(this.service);
  final CardsService service;
  @override
  Future<void> call(
    String cardId,
  ) async {
    await service.removeCard(cardId);
  }
}
