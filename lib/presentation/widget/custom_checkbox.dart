import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/palette.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    required this.condition,
    required this.isConditionActive,
    required this.toggleCheckbox,
    super.key,
  });
  final String condition;
  final bool isConditionActive;
  final void Function(bool isActive)? toggleCheckbox;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: !widget.isConditionActive
                ? Theme.of(context).cardColor
                : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          height: 31.h,
          width: 31.w,
          child: Transform.scale(
            scale: 2,
            child: Checkbox(
              fillColor: const MaterialStatePropertyAll(Palette.mainBlue),
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              value: widget.isConditionActive,
              onChanged: (value) => widget.toggleCheckbox?.call(value!),
            ),
          ),
        )
      ],
    );
  }
}
