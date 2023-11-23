import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/bank_card_dto.dart';
import 'package:mint/domain/entity/card.dart';

class FirebaseCardsGateway {
  FirebaseCardsGateway(this.jsonFactory, this.dtoFactory);
  final _firestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;

  final Factory<BankCardDto, Map<String, dynamic>> jsonFactory;
  final Factory<BankCard, BankCardDto> dtoFactory;

  Future<void> addCard(String number, String code, String date) async {
    try {
      final docRef = _firestore
          .collection('users')
          .doc(user?.uid)
          .collection('cards')
          .doc();

      final cardData = {
        'code': code,
        'number': number,
        'date': date,
        'id': docRef.id
      };

      await docRef.set(cardData);
    } catch (e) {
      throw Exception('Failed to create card.');
    }
  }

  Future<void> removeCard(String cardId) async {
    try {
      await _firestore
          .collection('users')
          .doc(user?.uid)
          .collection('cards')
          .doc(cardId)
          .delete();
    } catch (e) {
      throw Exception('Failed to delete card.');
    }
  }

  Stream<List<BankCard>> getCards() {
    return _firestore
        .collection('users')
        .doc(user?.uid)
        .collection('cards')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((docSnapshot) {
        final data = docSnapshot.data();
        final dto = jsonFactory.create(data);
        return dtoFactory.create(dto);
      }).toList();
    });
  }
}
