import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class SelectionButton extends StatefulWidget {
  const SelectionButton({
    required this.buttonText,
    required this.index,
    required this.onSelectedIndex,
    required this.selectedOptionIndex,
    super.key,
  });
  final String buttonText;
  final int index;
  final int selectedOptionIndex;
  final void Function(bool isSelected)? onSelectedIndex;
  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Theme.of(context).cardColor,
        border: Border.all(
          color: widget.selectedOptionIndex == widget.index
              ? Palette.mainBlue
              : Colors.transparent,
          width: 2.w,
        ),
      ),
      child: CheckboxListTile(
        fillColor: widget.selectedOptionIndex == widget.index
            ? const MaterialStatePropertyAll(Palette.mainBlue)
            : const MaterialStatePropertyAll(
                Palette.lightSeparator,
              ),
        checkboxShape: const CircleBorder(),
        value: widget.selectedOptionIndex == widget.index,
        title: Text(
          widget.buttonText,
          style: TextStyles.body,
        ),
        onChanged: (value) => widget.onSelectedIndex?.call(value ?? false),
      ),
    );
  }
}
