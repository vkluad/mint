import 'package:mint/domain/entity/card.dart';

abstract class CardsService {
  Stream<List<BankCard>> getCards();
  Future<void> addCard(String number, String code, String date);
  Future<void> removeCard(String cardId);
}
