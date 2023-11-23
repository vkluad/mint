import 'package:flutter/material.dart';
import 'package:mint/theme/palette.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: Palette.mainBlue),
    );
  }
}
