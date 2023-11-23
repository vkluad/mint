import 'package:bloc/bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/domain/usecases/create_intent_usecase.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc(this._createIntentUseCase) : super(const _Initial()) {
    on<PaymentEvent>((event, emit) async {
      await event.when(
        started: () => _startPayment(emit),
        createPaymentIntent:
            (useStripeSdk, billingDetails, currency, orderAmount) async {
          await _createPaymentIntent(
            emit,
            useStripeSdk: useStripeSdk,
            billingDetails: billingDetails,
            currency: currency,
            orderAmount: orderAmount,
          );
        },
      );
    });
  }
  final CreateIntentUseCase _createIntentUseCase;

  Future<void> _startPayment(Emitter<PaymentState> emit) async {
    emit(const _Initial());
  }

  Future<void> _createPaymentIntent(
    Emitter<PaymentState> emit, {
    required bool useStripeSdk,
    required BillingDetails billingDetails,
    required String currency,
    required int orderAmount,
  }) async {
    try {
      emit(const _Loading());
      await _createIntentUseCase
          .call(
        useStripeSdk: useStripeSdk,
        billingDetails: billingDetails,
        currency: currency,
        orderAmount: orderAmount,
      )
          .then((result) {
        if (result['error'] != null) {
          emit(const _Success());
        } else {
          emit(const _Success());
        }
      });
    } catch (e) {
      emit(const _Success());
    }
  }
}
