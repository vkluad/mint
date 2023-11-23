import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:mint/domain/services/stripe_service.dart';

abstract class CreateIntentUseCase {
  CreateIntentUseCase();

  Future<Map<String, dynamic>> call({
    required bool useStripeSdk,
    required BillingDetails billingDetails,
    required String currency,
    required int orderAmount,
  });
}

class StripeCreateIntentUseCase implements CreateIntentUseCase {
  StripeCreateIntentUseCase(this.service);
  final StripeService service;
  @override
  Future<Map<String, dynamic>> call({
    required bool useStripeSdk,
    required BillingDetails billingDetails,
    required String currency,
    required int orderAmount,
  }) {
    return service.createIntent(
      useStripeSdk: useStripeSdk,
      billingDetails: billingDetails,
      currency: currency,
      orderAmount: orderAmount,
    );
  }
}
