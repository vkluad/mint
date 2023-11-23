import 'package:mint/domain/services/cards_service.dart';

abstract class CreateCardUseCase {
  CreateCardUseCase();

  Future<void> call(String number, String code, String date);
}

class FirestoreCreateCardUseCase implements CreateCardUseCase {
  FirestoreCreateCardUseCase(this.service);
  final CardsService service;
  @override
  Future<void> call(String number, String code, String date) async {
    await service.addCard(number, code, date);
  }
}
