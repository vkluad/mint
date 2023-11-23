import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    required this.hintText,
    required this.controller,
    this.isReadOnly,
    this.dateCallback,
    super.key,
    this.onSubmitted,
  });
  final String hintText;
  final TextEditingController controller;
  final bool? isReadOnly;
  final VoidCallback? dateCallback;
  final void Function(String value)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.w),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
      child: TextField(
        style: TextStyle(color: Theme.of(context).primaryColor),
        onTap: dateCallback,
        onChanged: onSubmitted,
        onSubmitted: onSubmitted,
        readOnly: isReadOnly != null,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
