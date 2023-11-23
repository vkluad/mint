import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/text_styles.dart';

class PaymentDetailsSpan extends StatelessWidget {
  const PaymentDetailsSpan({required this.input, super.key});
  final String input;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 6.h, right: 6.w),
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        ),
        Text(
          input,
          style: TextStyles.body1.copyWith(
              color: Theme.of(context).textTheme.bodyMedium?.color,
              height: 1.3,),
        )
      ],
    );
  }
}
