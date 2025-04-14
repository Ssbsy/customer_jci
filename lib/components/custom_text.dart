import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final bool underline;
  final bool isJustified;
  final int? maxLines;
  const CustomText({
    super.key,
    required this.title,
    this.textColor = Colors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.underline = false,
    this.isJustified = false,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: isJustified ? TextAlign.justify : TextAlign.start,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
    );
  }
}
