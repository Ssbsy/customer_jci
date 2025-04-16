import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? title;
  final TextSpan? richText;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final bool underline;
  final bool isJustified;
  final int? maxLines;
  final bool isCentered;

  const CustomText({
    super.key,
    this.title,
    this.richText,
    this.textColor = Colors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.underline = false,
    this.isJustified = false,
    this.maxLines,
    this.isCentered = false,
  });

  @override
  Widget build(BuildContext context) {
    final textAlign =
        isCentered
            ? TextAlign.center
            : isJustified
            ? TextAlign.justify
            : TextAlign.start;

    if (richText != null) {
      return Text.rich(
        richText!,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign,
      );
    }

    return Text(
      title ?? '',
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
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
