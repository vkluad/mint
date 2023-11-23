import 'package:flutter/material.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class ToggleSignButton extends StatelessWidget {
  const ToggleSignButton(
      {required this.isSignInSelected, required this.callback, super.key,});
  final bool isSignInSelected;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: !isSignInSelected
                  ? AppLocalizations.of(context)!.haveAccount
                  : AppLocalizations.of(context)!.dontHaveAccount,
              style: TextStyles.footnote.copyWith(
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
            TextSpan(
              text: !isSignInSelected
                  ? AppLocalizations.of(context)!.clickSignIn
                  : AppLocalizations.of(context)!.clickSignUp,
              style: TextStyles.footnote.copyWith(
                color: Palette.mainBlue,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
