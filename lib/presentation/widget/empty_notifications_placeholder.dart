import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class EmptyNotificationPlaceholder extends StatelessWidget {
  const EmptyNotificationPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                height: 40.h,
                width: 40.w,
                child: SvgPicture.asset(
                  Assets.svg.notifications,
                  width: constraints.maxWidth * 0.4,
                  height: constraints.maxHeight * 0.4,
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Text(
              AppLocalizations.of(context)!.emptyNotifications,
              style: TextStyles.body.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
