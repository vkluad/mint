import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/l10n/l10n.dart';

import 'package:mint/theme/text_styles.dart';

class FirstMessageDate extends StatelessWidget {
  const FirstMessageDate({required this.messageDate, super.key});
  final DateTime messageDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
      child: Text(
        messageDate.isToday
            ? AppLocalizations.of(context)
                !.today(DateFormat.Hm().format(messageDate))
            : messageDate.isYesterday
                ? AppLocalizations.of(context)
                    !.yesterday(DateFormat.Hm().format(messageDate))
                : DateFormat('dd MMM').format(messageDate),
        style: TextStyles.caption1.copyWith(
          color: Theme.of(context).indicatorColor,
        ),
      ),
    );
  }
}
