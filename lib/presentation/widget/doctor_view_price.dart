import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/text_styles.dart';

class DoctorViewNamePriceHeader extends StatelessWidget {
  const DoctorViewNamePriceHeader(
      {required this.name, required this.price, super.key,});
  final String name;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyles.title2.copyWith(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        Text(
          '₴$price',
          style: TextStyles.title2.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
