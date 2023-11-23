import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({required this.isPaddingNeeded, super.key});
  final bool isPaddingNeeded;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isPaddingNeeded
          ? EdgeInsets.symmetric(horizontal: 16.w)
          : EdgeInsets.zero,
      child: Container(
        height: 2.h,
        color: Theme.of(context).dividerColor,
      ),
    );
  }
}
