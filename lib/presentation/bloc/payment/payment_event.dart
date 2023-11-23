part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.started() = StartPaymentEvent;
  const factory PaymentEvent.createPaymentIntent({
    required bool useStripeSdk,
    required BillingDetails billingDetails,
    required String currency,
    required int orderAmount,
  }) = CreatePaymentIntentEvent;
}
