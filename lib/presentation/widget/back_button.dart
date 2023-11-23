import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mint/l10n/l10n.dart';

import 'package:mint/theme/text_styles.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.callback});
  final VoidCallback? callback;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback ?? () => context.router.back(),
      child: Row(
        children: [
          Icon(
            Icons.navigate_before,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            AppLocalizations.of(context)!.back,
            style: TextStyles.body1.copyWith(
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
