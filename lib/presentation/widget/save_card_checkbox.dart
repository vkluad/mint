import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class SaveCardCheckbox extends StatelessWidget {
  const SaveCardCheckbox({
    required this.callback,
    required this.isChecked,
    super.key,
  });
  final VoidCallback callback;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5.h,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: callback,
            child: Padding(
              padding: EdgeInsets.only(
                right: 8.w,
              ),
              child: Container(
                width: 20.w,
                height: 20.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isChecked
                        ? Palette.mainBlue
                        : Theme.of(context).colorScheme.primaryContainer,
                    width: 2.w,
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                  color: isChecked
                      ? Palette.mainBlue
                      : Theme.of(context).colorScheme.primaryContainer,
                ),
                child: isChecked
                    ? const Icon(
                        Icons.check,
                        color: Palette.white,
                        size: 16,
                      )
                    : null,
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.saveCard,
            style: TextStyles.caption1,
          ),
        ],
      ),
    );
  }
}
