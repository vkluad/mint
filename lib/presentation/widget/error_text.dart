import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 4.h,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyles.callout1.copyWith(
            color: Palette.whiteErrorRed,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}
