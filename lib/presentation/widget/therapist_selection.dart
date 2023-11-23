import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/presentation/widget/option_button.dart';
import 'package:mint/theme/text_styles.dart';

class TherapistSelection extends StatefulWidget {
  const TherapistSelection({
    required this.tabTitle,
    this.options,
    this.range,
    super.key,
    this.sendValuesCallback,
  });

  final List<String>? options;
  final Map<String, RangeValues>? range;
  final String tabTitle;
  final void Function(RangeValues? range, List<String>? specialties)?
      sendValuesCallback;

  @override
  State<TherapistSelection> createState() => _TherapistSelectionState();
}

class _TherapistSelectionState extends State<TherapistSelection> {
  @override
  void initState() {
    super.initState();
    range = widget.range ?? {};
  }

  Map<String, RangeValues> range = {};
  int? selectedOptionIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.tabTitle,
            style: TextStyles.title2.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.only(top: 16.h),
            shrinkWrap: true,
            itemCount: widget.range?.keys.length ?? widget.options?.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: SelectionButton(
                  buttonText: widget.range?.keys.elementAt(index) ??
                      widget.options?[index] ??
                      '',
                  index: index,
                  selectedOptionIndex: selectedOptionIndex ?? 0,
                  onSelectedIndex: (isSelected) {
                    setState(() {
                      selectedOptionIndex = isSelected ? index : null;
                    });
                    widget.sendValuesCallback
                        ?.call(widget.range?.values.elementAt(index), null);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
