import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/palette.dart';

class CustomSeparator extends StatelessWidget {
  const CustomSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w,
      height: 28.h,
      color: Palette.dividerColor.withOpacity(
        0.5,
      ),
    );
  }
}
