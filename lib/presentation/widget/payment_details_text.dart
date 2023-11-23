import 'package:flutter/material.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/payment_details_span.dart';

class PaymentDetailsText extends StatelessWidget {
  const PaymentDetailsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Wrap(
        children: [
          PaymentDetailsSpan(
            input: AppLocalizations.of(context)!.pushingButton,
          ),
          PaymentDetailsSpan(
            input: AppLocalizations.of(context)!.moneyWithdrawn,
          ),
          PaymentDetailsSpan(
            input: AppLocalizations.of(context)!.important,
          ),
          PaymentDetailsSpan(
            input: AppLocalizations.of(context)!.signedUp,
          )
        ],
      ),
    );
  }
}
