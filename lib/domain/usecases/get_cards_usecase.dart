import 'package:mint/domain/entity/card.dart';

import 'package:mint/domain/services/cards_service.dart';

abstract class GetCardsUseCase {
  GetCardsUseCase();

  Stream<List<BankCard>> call();
}

class FirestoreGetCardsUseCase implements GetCardsUseCase {
  FirestoreGetCardsUseCase(this._service);
  final CardsService _service;

  @override
  Stream<List<BankCard>> call() {
    return _service.getCards();
  }
}
