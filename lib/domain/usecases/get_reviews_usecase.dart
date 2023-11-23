import 'package:mint/domain/entity/review.dart';

import 'package:mint/domain/services/review_service.dart';

abstract class GetReviewsUseCase {
  GetReviewsUseCase();

  Stream<List<Review>> call();
}

class FirestoreGetReviewsUseCase implements GetReviewsUseCase {
  FirestoreGetReviewsUseCase(this._service);
  final ReviewService _service;

  @override
  Stream<List<Review>> call() {
    return _service.getReviews();
  }
}
