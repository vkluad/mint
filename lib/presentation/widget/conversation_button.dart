import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mint/theme/text_styles.dart';

class ConversationButton extends StatelessWidget {
  const ConversationButton({required this.icon, required this.text, super.key});
  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 6.w),
          child: icon,
        ),
        Text(
          text,
          style: TextStyles.body.copyWith(
            fontSize: 14.sp,
            color: Theme.of(context).textTheme.bodyMedium?.color,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
