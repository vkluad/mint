import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class SignUpHintText extends StatelessWidget {
  const SignUpHintText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                style: TextStyles.caption1.copyWith(
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                ),
                text: AppLocalizations.of(context)!.agree,
              ),
              TextSpan(
                style: TextStyles.caption1
                    .copyWith(color: Theme.of(context).primaryColor),
                text: AppLocalizations.of(context)!.conditions,
              )
            ],
          ),
        ),
      ),
    );
  }
}
