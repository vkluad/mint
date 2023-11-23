import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class ApplePayButton extends StatelessWidget {
  const ApplePayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 8.h,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
          vertical: 14.h,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Palette.mainBlue),
          borderRadius: BorderRadius.all(
            Radius.circular(
              8.r,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.payWith,
              textAlign: TextAlign.center,
              style: TextStyles.body.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.apple,
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
