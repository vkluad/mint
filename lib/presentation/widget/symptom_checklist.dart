import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/presentation/widget/custom_checkbox.dart';

import 'package:mint/theme/text_styles.dart';

class SymptomChecklist extends StatefulWidget {
  const SymptomChecklist({
    required this.symptoms,
    required this.onSelectedSymptoms,
    super.key,
  });
  final Map<String, bool> symptoms;
  final void Function({required String symptom, required bool isActive})
      onSelectedSymptoms;

  @override
  State<SymptomChecklist> createState() => _SymptomChecklistState();
}

class _SymptomChecklistState extends State<SymptomChecklist> {
  List<String> selectedSymptoms = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.symptoms.length,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        final condition = widget.symptoms.keys.elementAt(index);
        final value = widget.symptoms.values.elementAt(index);
        return ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              CustomCheckBox(
                condition: condition,
                isConditionActive: value,
                toggleCheckbox: (isActive) {
                  setState(() {
                    widget.symptoms[condition] = isActive;
                    if (isActive && !selectedSymptoms.contains(condition)) {
                      selectedSymptoms.add(condition);
                    } else {
                      selectedSymptoms.remove(condition);
                    }
                    widget.onSelectedSymptoms(
                      symptom: condition,
                      isActive: isActive,
                    );
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Text(
                  condition,
                  style: TextStyles.body.copyWith(
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
