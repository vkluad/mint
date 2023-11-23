import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';
import 'package:pinput/pinput.dart';

class CustomPinput extends StatelessWidget {
  const CustomPinput({
    required this.color,
    required this.callback,
    required this.controller,
    super.key,
  });
  final Color color;
  final void Function(String value) callback;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      onCompleted: callback,
      controller: controller,
      cursor: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 11.5.w),
          child: Container(
            height: 2.h,
            width: 24.w,
            color: Palette.blackSecondary,
          ),
        ),
      ),
      defaultPinTheme: PinTheme(
        textStyle: TextStyles.title1,
        width: 57.w,
        height: 57.w,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Theme.of(context).cardColor,
          border: Border.all(
            color: color,
          ),
        ),
      ),
    );
  }
}
