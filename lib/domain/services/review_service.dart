import 'package:mint/domain/entity/review.dart';

abstract class ReviewService {
  Stream<List<Review>> getReviews();
  Future<void> sendReview({
    required String review,
    required DateTime sent,
    required String fromId,
    required String fromName,
    required int rate,
    required String toId,
  });
}
