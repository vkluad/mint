import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField(
      {required this.isSubmitted,
      required this.isPhoneNumberValid,
      required this.controller,
      required this.callback,
      super.key,});
  final bool isSubmitted;
  final bool isPhoneNumberValid;
  final TextEditingController controller;
  final void Function(String value) callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(
          color: !isPhoneNumberValid && isSubmitted
              ? Palette.whiteErrorRed
              : Colors.transparent,
          width: 2,
        ),
      ),
      height: 50.h,
      width: 343.w,
      child: TextFormField(
        cursorColor: Theme.of(context).primaryColor,
        controller: controller,
        onChanged: callback,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.phone,
        expands: true,
        maxLines: null,
        style: TextStyles.body
            .copyWith(color: Theme.of(context).textTheme.bodyMedium?.color),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 16.w),
          border: InputBorder.none,
          hintText: AppLocalizations.of(context)!.phoneHint,
          hintStyle: TextStyles.body
              .copyWith(color: Theme.of(context).textTheme.bodyMedium?.color),
        ),
      ),
    );
  }
}
