import 'package:flutter/material.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.light(
          onSurface: Theme.of(context).primaryColor,
          onPrimaryContainer: Theme.of(context).canvasColor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
          ),
        ),
      ),
      child: child ?? const SizedBox.shrink(),
    );
  }
}
