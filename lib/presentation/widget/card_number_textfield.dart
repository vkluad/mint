import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/l10n/l10n.dart';

class CardNumberTextField extends StatelessWidget {
  const CardNumberTextField(
      {required this.callback, required this.controller, super.key,});
  final void Function(String value) callback;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(
        horizontal: 17.w,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
      ),
      child: TextFormField(
        cursorColor: Theme.of(context).primaryColor,
        inputFormatters: [CardFormatter(separator: ' ')],
        keyboardType: TextInputType.number,
        controller: controller,
        onChanged: callback,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: AppLocalizations.of(context)!.cardHint,
        ),
      ),
    );
  }
}
