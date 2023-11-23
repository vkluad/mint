import 'package:flutter/material.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/presentation/widget/pin_key.dart';

class PinKeyboard extends StatefulWidget {
  const PinKeyboard({
    required this.controller,
    super.key,
  });
  final TextEditingController controller;

  @override
  State<PinKeyboard> createState() => _PinKeyboardState();
}

class _PinKeyboardState extends State<PinKeyboard> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
  }

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonWidget(
              text: '1',
              onInput: _input,
            ),
            ButtonWidget(text: '2', onInput: _input),
            ButtonWidget(text: '3', onInput: _input),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonWidget(text: '4', onInput: _input),
            ButtonWidget(text: '5', onInput: _input),
            ButtonWidget(text: '6', onInput: _input),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonWidget(text: '7', onInput: _input),
            ButtonWidget(text: '8', onInput: _input),
            ButtonWidget(text: '9', onInput: _input),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ButtonWidget(text: ''),
            ButtonWidget(text: '0', onInput: _input),
            ButtonWidget(
              text: '⌫',
              onPressed: _backspace,
              icon: Assets.svg.delete,
            ),
          ],
        ),
      ],
    );
  }

  void _input(String text) {
    final value = _controller.text + text;
    if (_controller.text.length < 4) {
      _controller.text = value;
    }
  }

  void _backspace() {
    final value = _controller.text;
    if (value.isNotEmpty) {
      _controller.text = value.substring(0, value.length - 1);
    }
  }
}
