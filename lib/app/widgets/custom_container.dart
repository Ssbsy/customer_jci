import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final Color textColor;
  final bool isBold;
  final Color containerColor;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  const CustomContainer({
    super.key,
    required this.title,
    this.textColor = AppColors.black,
    this.isBold = false,
    this.containerColor = AppColors.transparent,
    this.borderColor = AppColors.transparent,
    this.borderRadius = 12,
    this.borderWidth = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(width: borderWidth, color: borderColor),
      ),
      child: CustomText(
        title: title,
        textColor: textColor,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
