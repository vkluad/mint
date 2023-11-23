import 'package:mint/domain/services/review_service.dart';

abstract class SendReviewUseCase {
  SendReviewUseCase();

  Future<void> call({
    required String review,
    required DateTime sent,
    required String fromId,
    required String fromName,
    required int rate,
    required String toId,
  });
}

class FirestoreSendReviewUseCase implements SendReviewUseCase {
  FirestoreSendReviewUseCase(this.service);
  final ReviewService service;
  @override
  Future<void> call({
    required String review,
    required DateTime sent,
    required String fromId,
    required String fromName,
    required int rate,
    required String toId,
  }) async {
    await service.sendReview(
      review: review,
      sent: sent,
      fromId: fromId,
      fromName: fromName,
      rate: rate,
      toId: toId,
    );
  }
}
