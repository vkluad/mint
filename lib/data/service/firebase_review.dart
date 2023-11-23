import 'package:mint/data/gateway/firebase_review_gateway.dart';

import 'package:mint/domain/entity/review.dart';

import 'package:mint/domain/services/review_service.dart';

class FirebaseReviewService implements ReviewService {
  FirebaseReviewService(this._gateway);

  final FirebaseReviewGateway _gateway;
  @override
  Future<void> sendReview({
    required String review,
    required DateTime sent,
    required String fromId,
    required String fromName,
    required int rate,
    required String toId,
  }) async {
    try {
      await _gateway.sendReview(
        review: review,
        sent: sent,
        fromId: fromId,
        fromName: fromName,
        rate: rate,
        toId: toId,
      );
    } catch (e) {
      throw Exception('Failed to send review.');
    }
  }

  @override
  Stream<List<Review>> getReviews() {
    return _gateway.getReview();
  }
}
