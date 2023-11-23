import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    required this.isSelected,
    required this.value,
    required this.callback,
    super.key,
  });
  final bool isSelected;
  final String value;
  final void Function(bool isActive)? callback;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      elevation: 0,
      backgroundColor: Theme.of(context).cardColor,
      selectedColor: Theme.of(context).cardColor,
      pressElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        side: BorderSide(
          color: isSelected ? Palette.mainBlue : Colors.transparent,
        ),
      ),
      label: Text(
        value,
        style: TextStyles.body1.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      avatar: isSelected
          ? CircleAvatar(
              radius: 8.r,
              backgroundColor: Palette.mainBlue,
              child: Icon(
                Icons.check,
                size: 12.r,
                color: Palette.white,
              ),
            )
          : Container(
              height: 16.h,
              width: 16.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(),
              ),
            ),
      selected: isSelected,
      onSelected: (selected) => callback?.call(selected),
    );
  }
}
