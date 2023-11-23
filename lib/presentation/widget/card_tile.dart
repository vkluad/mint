import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/backbone/card_reg_exp.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    required this.callback,
    required this.isSelected,
    required this.cardNumber,
    super.key,
  });
  final VoidCallback callback;
  final bool isSelected;
  final String cardNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: EdgeInsets.only(
          right: 8.w,
        ),
        child: Container(
          padding:
              const EdgeInsets.only(right: 35, left: 20, top: 20, bottom: 19),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                15.r,
              ),
            ),
            color: isSelected ? Palette.mainBlue : null,
            border: Border.all(
              color: isSelected
                  ? Colors.transparent
                  : Theme.of(context).colorScheme.tertiary,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                CardRegExp.visaPattern.hasMatch(cardNumber)
                    ? Assets.svg.visa
                    : CardRegExp.mastercardPattern.hasMatch(cardNumber)
                        ? Assets.svg.mastercard
                        : Assets.svg.delete,
                colorFilter: ColorFilter.mode(
                  isSelected
                      ? Palette.white
                      : Theme.of(context).colorScheme.tertiaryContainer,
                  BlendMode.srcIn,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Text(
                  AppLocalizations.of(context)!.creditCard,
                  style: TextStyles.hugeButton.copyWith(
                    fontWeight: isSelected ? FontWeight.w400 : FontWeight.w500,
                    color: isSelected
                        ? Palette.white
                        : Theme.of(context).primaryColor,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Row(
                      children: List.generate(
                        4,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: 1.w),
                          child: Container(
                            height: 5.h,
                            width: 5.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isSelected
                                  ? Palette.cardDot
                                  : Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    cardNumber.substring(cardNumber.length - 4),
                    style: TextStyles.caption1.copyWith(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.3.sp,
                      color: isSelected
                          ? Palette.ocean
                          : Theme.of(context).colorScheme.tertiaryContainer,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
