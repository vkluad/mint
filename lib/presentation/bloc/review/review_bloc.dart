import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/domain/entity/review.dart';
import 'package:mint/domain/usecases/get_reviews_usecase.dart';
import 'package:mint/domain/usecases/send_review_usecase.dart';

part 'review_event.dart';
part 'review_state.dart';
part 'review_bloc.freezed.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc(
    this._getReviewsUseCase,
    this._sendReviewUseCase,
  ) : super(const _Initial()) {
    on<ReviewEvent>((event, emit) async {
      await event.when(
        sendReview: (review , sent, fromId, fromName, rate, toId) async {
          await _sendReview(
            emit,
            review: review,
            sent: sent,
            fromId: fromId,
            fromName: fromName,
            rate: rate,
            toId: toId,
          );
        },
        getReviews: () async => _getReviews(
          emit,
        ),
      );
    });
  }

  final GetReviewsUseCase _getReviewsUseCase;
  final SendReviewUseCase _sendReviewUseCase;


  Future<void> _getReviews(
    Emitter<ReviewState> emit,
  ) async {
    emit(const _Loading());
    await _getReviewsUseCase.call().forEach((reviews) {
      var loadedReviews = <Review>[];
      for (final review in reviews) {
        loadedReviews.add(review);
      }
      loadedReviews = loadedReviews
        ..sort(
          (a, b) => a.sent.compareTo(b.sent),
        );
      emit(LoadedReviews(loadedReviews));
    });
  }

  Future<void> _sendReview(
    Emitter<ReviewState> emit, {
    required String review,
    required DateTime sent,
    required String fromId,
    required String fromName,
    required int rate,
    required String toId,
  }) async {
    await _sendReviewUseCase.call(
      review: review,
      sent: sent,
      fromId: fromId,
      fromName: fromName,
      rate: rate,
      toId: toId,
    );
  }
}
