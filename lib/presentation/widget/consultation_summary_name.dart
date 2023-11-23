import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/text_styles.dart';

class SummaryDoctorName extends StatelessWidget {
  const SummaryDoctorName({required this.name, super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 4.h,
      ),
      child: Text(
        name,
        style: TextStyles.headline1.copyWith(
          fontWeight: FontWeight.w600,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
