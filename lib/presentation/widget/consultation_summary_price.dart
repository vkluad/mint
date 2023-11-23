import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/theme/text_styles.dart';

class SummaryPrice extends StatelessWidget {
  const SummaryPrice(
      {required this.price,
      required this.callback, required this.isFavourite, super.key,});
  final String price;
  final VoidCallback callback;
  final bool isFavourite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 11.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: callback,
            child: !isFavourite
                ? SvgPicture.asset(
                    Assets.svg.fav,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).canvasColor,
                      BlendMode.srcIn,
                    ),
                  )
                : SvgPicture.asset(
                    Assets.svg.filledFav,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).canvasColor,
                      BlendMode.srcIn,
                    ),
                  ),
          ),
          const Spacer(),
          Text(
            '₴$price',
            style: TextStyles.caption4.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
