import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class HotelBookingAvailableRoom extends StatelessWidget {
  const HotelBookingAvailableRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: "Available rooms",
              textColor: AppColors.darkGray,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),

            const Gap(30),

            Row(
              children: [
                CustomText(
                  title: "Check-In/Check-out: ",
                  fontWeight: FontWeight.bold,
                ),
                CustomText(title: '8 night'),
              ],
            ),

            const Gap(15),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.coolGray),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                spacing: 15,
                children: [
                  Icon(Icons.calendar_month, color: AppColors.darkGray),
                  CustomText(title: "06/09/2025 - 06/17/2025"),
                ],
              ),
            ),

            const Gap(10),
          ],
        ),
      ),
    );
  }
}
