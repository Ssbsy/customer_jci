import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final double enabledBorderSide;
  final double enabledBorderRadius;
  final Color enabledBorderSideColor;
  final InputDecoration? decoration;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final String? hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final int maxLines;
  final double? leftPadding;
  final double? rightPadding;
  final double? topPadding;
  final double? bottomPadding;
  final EdgeInsetsGeometry? padding;
  final Icon? suffixIcon;
  final double focusedBorderSide;
  final double focusedBorderRadius;
  final Color focusedBorderSideColor;
  final Color? fillColor;

  const CustomTextField({
    super.key,
    required this.controller,
    this.enabledBorderSide = 1,
    this.enabledBorderRadius = 10,
    this.enabledBorderSideColor = AppColors.black,
    this.decoration,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.textColor = AppColors.black,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.bottomPadding,
    this.padding,
    this.suffixIcon,
    this.focusedBorderSide = 1,
    this.focusedBorderRadius = 10,
    this.focusedBorderSideColor = AppColors.black,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ??
          EdgeInsets.only(
            left: leftPadding ?? 0,
            right: rightPadding ?? 0,
            top: topPadding ?? 0,
            bottom: bottomPadding ?? 0,
          ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        maxLines: maxLines,
        style: GoogleFonts.roboto(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        ),
        decoration:
            decoration ??
            InputDecoration(
              fillColor: fillColor,
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: enabledBorderSide,
                  color: enabledBorderSideColor,
                ),
                borderRadius: BorderRadius.circular(enabledBorderRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: focusedBorderSide,
                  color: focusedBorderSideColor,
                ),
                borderRadius: BorderRadius.circular(focusedBorderRadius),
              ),
              suffixIcon: suffixIcon,
            ),
      ),
    );
  }
}
