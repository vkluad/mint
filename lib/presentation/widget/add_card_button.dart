import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({
    required this.isEmpty,
    required this.callback,
    super.key,
  });
  final bool isEmpty;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isEmpty
          ? EdgeInsets.only(
              top: 24.h,
            )
          : EdgeInsets.zero,
      child: GestureDetector(
        onTap: callback,
        child: Row(
          children: [
            Container(
              height: 28.h,
              width: 28.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).cardColor,
              ),
              padding: EdgeInsets.all(6.r),
              child: SvgPicture.asset(
                Assets.svg.add,
                height: 17.h,
                width: 17.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.w,
              ),
              child: Text(
                AppLocalizations.of(context)!.addCreditCard,
                style: TextStyles.tab.copyWith(
                    fontSize: 16.sp, color: Theme.of(context).primaryColor,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
