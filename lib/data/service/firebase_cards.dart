import 'package:mint/data/gateway/firebase_cards_gateway.dart';
import 'package:mint/domain/entity/card.dart';
import 'package:mint/domain/services/cards_service.dart';

class FirebaseCardsService implements CardsService {
  FirebaseCardsService(this._gateway);

  final FirebaseCardsGateway _gateway;
  @override
  Future<void> addCard(String number, String code, String date) async {
    try {
      await _gateway.addCard(number, code, date);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> removeCard(String cardId) async {
    try {
      await _gateway.removeCard(cardId);
    } catch (e) {
      throw Exception('Failed to delete card.');
    }
  }

  @override
  Stream<List<BankCard>> getCards() {
    return _gateway.getCards();
  }
}
