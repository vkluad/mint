import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;
import 'package:mint/backbone/exceptions.dart';

class StripeGateway {
  final Stripe stripe = Stripe.instance;
  FirebaseFunctions functions = FirebaseFunctions.instance;

  Future<Map<String, dynamic>> proceedIntent({
    required bool useStripeSdk,
    required BillingDetails billingDetails,
    required String currency,
    required int orderAmount,
  }) async {
    try {
      final paymentMethod = await Stripe.instance.createPaymentMethod(
        params: PaymentMethodParams.card(
          paymentMethodData: PaymentMethodData(
            billingDetails: billingDetails,
          ),
        ),
      );
      final url = Uri.parse(
        'https://us-central1-mint-flavors-dev.cloudfunctions.net/StripePayEndpointMethodId',
      );
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'useStripeSdk': useStripeSdk,
          'paymentMethodId': paymentMethod.id,
          'currency': currency,
          'orderAmount': orderAmount
        }),
      );

      final paymentIntentResult =
          json.decode(response.body) as Map<String, dynamic>;

      if (paymentIntentResult['error'] != null) {
        throw CustomException(paymentIntentResult['error'].toString());
      }

      if (paymentIntentResult['clientSecret'] != null &&
          paymentIntentResult['requiresAction'] == null) {
        return json.decode(response.body) as Map<String, dynamic>;
      }

      if (paymentIntentResult['clientSecret'] != null &&
          paymentIntentResult['requiresAction'] == true) {
        final clientSecret = paymentIntentResult['clientSecret'] as String;

        final paymentIntent =
            await Stripe.instance.handleNextAction(clientSecret);

        if (paymentIntent.status == PaymentIntentsStatus.RequiresConfirmation) {
          // Call API to confirm intent
          final results =
              await confirmIntent(paymentIntentId: paymentIntent.id);

          if (results['error'] != null) {
            throw CustomException(results['error'].toString());
          }
        }
      }
      return json.decode(response.body) as Map<String, dynamic>;
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  Future<Map<String, dynamic>> confirmIntent({
    required String paymentIntentId,
  }) async {
    try {
      final url = Uri.parse(
        'https://us-central1-mint-flavors-dev.cloudfunctions.net/StripePayEndpointIntentId',
      );

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'paymentIntentId': paymentIntentId,
        }),
      );
      return json.decode(response.body) as Map<String, dynamic>;
    } catch (e) {
      throw Exception(e);
    }
  }
}
