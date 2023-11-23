import 'package:flutter/material.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class CodeSentText extends StatelessWidget {
  const CodeSentText({required this.phoneNumber, super.key});
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: AppLocalizations.of(context)!.codeSent,
            style: TextStyles.caption1.copyWith(
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
          TextSpan(
            text: phoneNumber,
            style: TextStyles.caption1.copyWith(
              color: Palette.mainBlue,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
