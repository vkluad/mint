import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    required this.text,
    super.key,
    this.onPressed,
    this.icon,
    this.onInput,
  });
  final String text;
  final VoidCallback? onPressed;
  final String? icon;
  final void Function(String)? onInput;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 18.h),
      child: SizedBox.square(
        dimension: 78.w,
        child: RawMaterialButton(
          elevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          fillColor: text.isEmpty || icon != null
              ? Colors.transparent
              : Theme.of(context).colorScheme.onTertiaryContainer,
          shape: const CircleBorder(),
          onPressed: onPressed ?? () => onInput!(text),
          child: icon != null
              ? SvgPicture.asset(icon ?? '')
              : Text(
                  text,
                  style: TextStyle(fontSize: 37.sp),
                ),
        ),
      ),
    );
  }
}
