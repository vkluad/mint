import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class SignButton extends StatelessWidget {
  const SignButton(
      {required this.isPhoneNumberValid,
      required this.isSignInSelected,
      required this.callback,
      super.key,});
  final bool isPhoneNumberValid;
  final bool isSignInSelected;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isPhoneNumberValid ? callback : null,
      child: Container(
        decoration: BoxDecoration(
          color: isPhoneNumberValid
              ? Palette.mainBlue
              : Palette.mainBlue.withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
        ),
        height: 55.h,
        width: 343.w,
        child: Center(
          child: Text(
            isSignInSelected
                ? AppLocalizations.of(context)!.signIn
                : AppLocalizations.of(context)!.signUp,
            style: TextStyles.headline.copyWith(
              color: Palette.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
