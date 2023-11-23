import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/symptoms.dart';
import 'package:mint/presentation/widget/custom_choice_chip.dart';

class ChipSelectionScreen extends StatefulWidget {
  const ChipSelectionScreen({required this.onTabValueReceived, super.key});
  final void Function(RangeValues? range, List<String>? specialties)
      onTabValueReceived;

  @override
  State<ChipSelectionScreen> createState() => _ChipSelectionScreenState();
}

class _ChipSelectionScreenState extends State<ChipSelectionScreen> {
  void _setValueCallback(RangeValues? range, List<String> specialties) {
    widget.onTabValueReceived(range, specialties);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Wrap(
        spacing: 8.w,
        children: problems.entries.map((chip) {
          return CustomChip(
            isSelected: chip.value,
            value: chip.key,
            callback: (isActive) {
              setState(() {
                problems[chip.key] = isActive;
              });
              final selectedProblems = problems.entries
                  .where((entry) => entry.value)
                  .map((entry) => entry.key)
                  .toList();
              _setValueCallback(null, selectedProblems);
            },
          );
        }).toList(),
      ),
    );
  }
}
