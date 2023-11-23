import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class PaymentDetailsHeader extends StatelessWidget {
  const PaymentDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 16.h,
        top: 24.h,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          AppLocalizations.of(context)!.paymentDetails,
          style: TextStyles.callout.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor,),
        ),
      ),
    );
  }
}
