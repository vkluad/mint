import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';

import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class ThanksPage extends StatelessWidget {
  const ThanksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
        child: CupertinoButton(
          color: Palette.mainBlue,
          child: Text(
            AppLocalizations.of(context)!.submit,
            style: const TextStyle(color: Palette.white),
          ),
          onPressed: () {
            context.router.navigate(const DoctorsRoute());
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.png.thankyou.path),
            Padding(
              padding: EdgeInsets.only(top: 24.h, bottom: 8.h),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.thankYou,
                      style: TextStyles.largeTitle.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 31.sp,
                          fontWeight: FontWeight.w700,),
                    ),
                    TextSpan(
                      text:
                          '${AppLocalizations.of(context)!.time.toLowerCase()}!',
                      style: TextStyles.largeTitle
                          .copyWith(color: Palette.mainBlue, fontSize: 31.sp),
                    )
                  ],
                ),
              ),
            ),
            Text(
              AppLocalizations.of(context)!.feedback,
              style: TextStyles.body,
            ),
          ],
        ),
      ),
    );
  }
}
