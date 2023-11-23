import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/palette.dart';

class CardDetailsTextField extends StatelessWidget {
  const CardDetailsTextField({
    required this.callback,
    required this.controller,
    required this.hintText,
    this.formatter,
    super.key,
  });
  final void Function(String value) callback;
  final TextEditingController controller;
  final TextInputFormatter? formatter;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.w,
      ),
      width: 163.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
      ),
      child: TextFormField(
        cursorColor: Palette.mainBlue,
        keyboardType: TextInputType.number,
        controller: controller,
        onChanged: callback,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
