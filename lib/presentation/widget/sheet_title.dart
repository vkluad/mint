import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/custom_divider.dart';

import 'package:mint/theme/text_styles.dart';

class SheetTitle extends StatelessWidget {
  const SheetTitle({
    super.key,
    this.text,
    this.isPaddingNeeded,
    this.actionsWidget,
    this.callback,
  });
  final String? text;
  final bool? isPaddingNeeded;
  final Widget? actionsWidget;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 14.h,
            top: 14.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: callback ?? context.router.pop,
                child: Icon(Icons.close, color: Theme.of(context).primaryColor),
              ),
              Text(
                text ?? AppLocalizations.of(context)!.chooseTime,
                style: TextStyles.title2.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              actionsWidget ??
                  SizedBox(
                    width: 30.h,
                  )
            ],
          ),
        ),
        CustomDivider(
          isPaddingNeeded: isPaddingNeeded ?? false,
        ),
      ],
    );
  }
}
