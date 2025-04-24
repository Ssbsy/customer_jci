import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color containerColor;
  final double borderRadius;
  final Color borderColor;
  final Color textColor;
  final bool isBold;
  final VoidCallback onTap;
  final double padding;
  const CustomButton({
    super.key,
    required this.text,
    this.containerColor = Colors.transparent,
    this.borderRadius = 0,
    this.borderColor = Colors.black,
    this.textColor = Colors.black,
    this.isBold = false,
    this.padding = 15,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: containerColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
