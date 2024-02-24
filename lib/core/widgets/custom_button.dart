import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.borderRadius,
    required this.backgroundColor,
    required this.onPressed,
  });
  final Text text;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor,
        ),
        child: text,
      ),
    );
  }
}
