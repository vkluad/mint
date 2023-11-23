import 'package:flutter/material.dart';
import 'package:mint/l10n/l10n.dart';

import 'package:mint/theme/text_styles.dart';

class RemainingTimeText extends StatelessWidget {
  const RemainingTimeText({required this.remainingSeconds, super.key});
  final int remainingSeconds;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${AppLocalizations.of(context)!.codeTimeOut(remainingSeconds.toString().padLeft(2, '0'))} seconds',
      style: TextStyles.caption1.copyWith(
        color: Theme.of(context).textTheme.bodyMedium?.color,
      ),
    );
  }
}
