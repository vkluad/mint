import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/review_dto.dart';
import 'package:mint/domain/entity/review.dart';

class ReviewFromDtoFactory implements Factory<Review, ReviewDto> {
  @override
  Review create(ReviewDto param) => Review(
        toId: param.toId,
        review: param.review,
        fromId: param.fromId,
        fromName: param.fromName,
        rate: param.rate,
        sent: param.sent,
        reviewId: param.reviewId,
      );
}
