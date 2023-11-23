import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/review_dto.dart';
import 'package:mint/domain/entity/review.dart';

class FirebaseReviewGateway {
  FirebaseReviewGateway(this.jsonFactory, this.dtoFactory);
  final _firestore = FirebaseFirestore.instance;

  User? user = FirebaseAuth.instance.currentUser;

  final Factory<ReviewDto, Map<String, dynamic>> jsonFactory;
  final Factory<Review, ReviewDto> dtoFactory;

  Future<void> sendReview({
    required String review,
    required DateTime sent,
    required String fromId,
    required String fromName,
    required int rate,
    required String toId,
  }) async {
    try {
      final reviewData = {
        'review': review,
        'sent': sent,
        'fromId': fromId,
        'fromName' : fromName,
        'rate' : rate,
        'toId': toId,
      };

      final docRef = _firestore
          // .collection('users')
          // .doc(user?.uid)
          .collection('reviews')
          .doc();

      final reviewId = docRef.id;
      await docRef.set({...reviewData, 'reviewId': reviewId});
    } catch (e) {
      throw Exception('Failed to send review.');
    }
  }

  Stream<List<Review>> getReview() {
    return _firestore
        .collection('reviews')
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
