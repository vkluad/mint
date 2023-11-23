import 'package:flutter_stripe/flutter_stripe.dart';

abstract class StripeService {
  Future<Map<String, dynamic>> createIntent({
    required bool useStripeSdk,
    required BillingDetails billingDetails,
    required String currency,
    required int orderAmount,
  });
}
