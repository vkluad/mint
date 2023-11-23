import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class EmptyListText extends StatelessWidget {
  const EmptyListText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Text(
          AppLocalizations.of(context)!.emptyList,
          style: TextStyles.body.copyWith(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
