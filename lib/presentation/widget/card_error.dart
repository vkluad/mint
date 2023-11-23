import 'package:flutter/material.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/error_text.dart';

class CardError extends StatelessWidget {
  const CardError({
    required this.isDateValid,
    required this.isDateNotEmpty,
    required this.isCodeValid,
    required this.isCodeNotEmpty,
    super.key,
  });
  final bool isDateValid;
  final bool isDateNotEmpty;
  final bool isCodeValid;
  final bool isCodeNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: !isDateValid && isDateNotEmpty,
          child: ErrorText(text: AppLocalizations.of(context)!.wrongCardDate),
        ),
        Visibility(
          visible: !isCodeValid && isCodeNotEmpty,
          child: ErrorText(text: AppLocalizations.of(context)!.wrongCardCVV),
        ),
      ],
    );
  }
}
