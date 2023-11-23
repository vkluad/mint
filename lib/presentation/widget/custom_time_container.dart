import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint/theme/text_styles.dart';

class CustomTimeContainer extends StatelessWidget {
  const CustomTimeContainer({required this.date, super.key});
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.r,
          ),
        ),
      ),
      height: 50.h,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
            ),
            child: Icon(
              Icons.calendar_month,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
          Container(
            height: 50.h,
            width: 2.w,
            color: Theme.of(context).textTheme.bodyMedium?.color,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.w,
            ),
            child: Text(
              DateFormat('dd.MM.yyyy').format(date),
              style: TextStyles.caption1.copyWith(
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
          )
        ],
      ),
    );
  }
}
