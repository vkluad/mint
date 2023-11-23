import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/backbone/card_reg_exp.dart';

import 'package:mint/gen/assets.gen.dart';
import 'package:mint/theme/text_styles.dart';

class ProfileCardContainer extends StatelessWidget {
  const ProfileCardContainer({required this.cardNumber, super.key});
  final String cardNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
        color: Theme.of(context).cardColor,
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          SvgPicture.asset(
            CardRegExp.visaPattern.hasMatch(cardNumber)
                ? Assets.svg.visaProfile
                : CardRegExp.mastercardPattern.hasMatch(cardNumber)
                    ? Assets.svg.masterProfile
                    : Assets.svg.delete,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Text(
              CardRegExp.formatCardString(cardNumber),
              style: TextStyles.tagBig.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
