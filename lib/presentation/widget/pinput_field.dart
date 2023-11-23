import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/palette.dart';
import 'package:pinput/pinput.dart';

class PinInputField extends StatefulWidget {
  const PinInputField({
    required this.controller,
    super.key,
    this.completionCallback,
    this.validPin,
  });
  final TextEditingController controller;
  final VoidCallback? completionCallback;
  final String? validPin;

  @override
  State<PinInputField> createState() => _PinInputFieldState();
}

class _PinInputFieldState extends State<PinInputField> {
  late TextEditingController _controller;
  Color obscuringWidgetColor = Palette.blackSecondary;
  String pinHint = '';
  String validPin = '';

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
    validPin = widget.validPin.toString();
    _controller.addListener(updateObscuringWidgetColor);
  }

  @override
  void dispose() {
    _controller.removeListener(updateObscuringWidgetColor);
    // ..dispose();
    super.dispose();
  }

  void updateObscuringWidgetColor() {
    if (_controller.text != widget.validPin && _controller.text.length == 4) {
      setState(() {
        obscuringWidgetColor = Palette.whiteErrorRed;
      });
    } else {
      setState(() {
        obscuringWidgetColor = Theme.of(context).primaryColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pinput(
          onCompleted: (value) {
            pinHint = value;
            widget.completionCallback?.call();
          },
          controller: widget.controller,
          obscureText: true,
          obscuringWidget: CircleAvatar(
            backgroundColor: obscuringWidgetColor,
          ),
          defaultPinTheme: PinTheme(
            margin: EdgeInsets.symmetric(horizontal: 6.w),
            height: 28.h,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              shape: BoxShape.circle,
            ),
            width: 13.h,
          ),
        ),
      ],
    );
  }
}
