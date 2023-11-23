import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:mint/data/gateway/stripe_gateway.dart';
import 'package:mint/domain/services/stripe_service.dart';

class RemoteStripeService implements StripeService {
  RemoteStripeService(this._gateway);

  final StripeGateway _gateway;

  @override
  Future<Map<String, dynamic>> createIntent({
    required bool useStripeSdk,
    required BillingDetails billingDetails,
    required String currency,
    required int orderAmount,
  }) async {
    return _gateway.proceedIntent(
      useStripeSdk: useStripeSdk,
      billingDetails: billingDetails,
      currency: currency,
      orderAmount: orderAmount,
    );
  }
}
