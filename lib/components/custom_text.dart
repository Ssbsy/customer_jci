import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  const CustomText({
    super.key,
    required this.title,
    this.textColor = Colors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(color: textColor, fontSize: fontSize));
  }
}
