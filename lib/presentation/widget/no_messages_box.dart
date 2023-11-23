import 'package:flutter/material.dart';
import 'package:mint/l10n/l10n.dart';

class NoMessagesBox extends StatelessWidget {
  const NoMessagesBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(
              context,
            )!.noMessages,
          ),
        ],
      ),
    );
  }
}
