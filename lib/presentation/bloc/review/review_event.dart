part of 'review_bloc.dart';

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.sendReview({
    required String review,
    required DateTime sent,
    required String fromId,
    required String fromName,
    required int rate,
    required String toId,
  }) = SendReviewEvent;
  const factory ReviewEvent.getReviews() = GetReviewsEvent;
}
