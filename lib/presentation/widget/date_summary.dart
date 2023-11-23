import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint/l10n/l10n.dart';

import 'package:mint/theme/text_styles.dart';

class DateSummaryBox extends StatelessWidget {
  const DateSummaryBox({required this.plannedDate, super.key});
  final DateTime plannedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.r,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.date,
                style: TextStyles.callout,
              ),
              Text(
                DateFormat('dd.MM.yyyy').format(plannedDate),
                style: TextStyles.callout,
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.time,
                style: TextStyles.callout,
              ),
              Text(
                DateFormat.Hm().format(plannedDate),
                style: TextStyles.callout,
              )
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.duration,
                style: TextStyles.callout,
              ),
              Text(
                AppLocalizations.of(context)!.upTo30,
                style: TextStyles.callout,
              )
            ],
          ),
        ],
      ),
    );
  }
}
