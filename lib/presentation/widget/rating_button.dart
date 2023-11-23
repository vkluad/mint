import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/presentation/widget/rating_bar.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class ReviewButton extends StatelessWidget {
  const ReviewButton({
    required this.text,
    required this.rating,
    required this.isSelected,
    super.key,
  });
  final String text;
  final double rating;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          border: isSelected ? Border.all(color: Palette.mainBlue) : null,
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
          color: Theme.of(context).cardColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyles.body1,
            ),
            SizedBox(
              height: 16.h,
              child: CustomRatingBar(
                rating: rating,
                padding: EdgeInsets.only(right: 1.w),
              ),
            )
          ],
        ),
      ),
    );
  }
}
