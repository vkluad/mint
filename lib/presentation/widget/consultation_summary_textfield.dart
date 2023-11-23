import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';

import 'package:mint/theme/text_styles.dart';

class SummaryTextField extends StatelessWidget {
  const SummaryTextField({required this.controller, super.key});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: TextField(
        // expands: true,
        controller: controller,
        style: TextStyles.body1.copyWith(
          color: Theme.of(context).primaryColor,
        ),
        keyboardType: TextInputType.multiline,
        maxLines: null,
        minLines: 3,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          counterText: '',
          hintText: AppLocalizations.of(context)!.notesHint,
          border: InputBorder.none,
          hintStyle: TextStyles.body1.copyWith(
            color: Theme.of(context).textTheme.displayMedium?.color,
          ),
        ),
      ),
    );
  }
}
