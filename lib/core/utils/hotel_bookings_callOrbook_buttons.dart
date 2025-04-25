import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';

class HotelBookingsCallorbookButtons extends StatelessWidget {
  const HotelBookingsCallorbookButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(
          text: 'BOOK NOW',
          textSize: 14,
          textColor: AppColors.white,
          isBold: true,
          onTap: () {},
          containerWidth: width * 0.37,
          borderRadius: 10,
          containerColor: AppColors.mediumBlue,
          borderColor: AppColors.mediumBlue,
          padding: 8,
        ),
        CustomButton(
          icon: Icon(Icons.call, color: AppColors.white, size: 15),
          text: 'CALL NOW',
          textSize: 14,
          textColor: AppColors.white,
          isBold: true,
          onTap: () {},
          containerWidth: width * 0.37,
          borderRadius: 10,
          containerColor: AppColors.alertRed,
          borderColor: AppColors.alertRed,
          padding: 8,
        ),
      ],
    );
  }
}
