import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class ConsultationSummaryHeader extends StatelessWidget {
  const ConsultationSummaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          AppLocalizations.of(context)!.consultationSummary,
          style: TextStyles.headline1.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor,),
        ),
      ),
    );
  }
}
