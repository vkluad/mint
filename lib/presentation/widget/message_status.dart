import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class MessageStatusText extends StatelessWidget {
  const MessageStatusText({required this.messageReadTime, super.key});
  final DateTime messageReadTime;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppLocalizations.of(context)
              !.read(DateFormat.Hm().format(messageReadTime)),
          style: TextStyles.caption2.copyWith(
            color: Theme.of(context).textTheme.displayMedium?.color,
            fontSize: 10.sp,
          ),
        ),
      ),
    );
  }
}
