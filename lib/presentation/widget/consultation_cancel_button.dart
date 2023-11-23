import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class ConsultationCancelButton extends StatelessWidget {
  const ConsultationCancelButton({required this.callback, super.key});
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          border: Border.all(color: Palette.mainBlue),
        ),
        child: Center(
          child: Text(
            AppLocalizations.of(context)!.cancel,
            style: TextStyles.body1,
          ),
        ),
      ),
    );
  }
}
