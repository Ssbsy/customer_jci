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
  final double containerWidth;
  final double textSize;
  final Icon? icon;
  final double SizedBoxWidth;
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
    this.textSize = 12,
    this.containerWidth = double.infinity,
    this.icon,
    this.SizedBoxWidth = 12,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: containerWidth,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: containerColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[icon!, SizedBox(width: SizedBoxWidth)],
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                fontSize: textSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
