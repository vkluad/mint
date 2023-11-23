import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/palette.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    required this.callback,
    required this.text,
    super.key,
  });
  final VoidCallback callback;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      child: CupertinoButton(
        color: Palette.mainBlue,
        disabledColor: Palette.mainBlue.withOpacity(0.5),
        onPressed: callback,
        child: Text(
          text,
          style: const TextStyle(color: Palette.white),
        ),
      ),
    );
  }
}
