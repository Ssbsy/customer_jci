import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class HotelRoomBookNow extends StatelessWidget {
  const HotelRoomBookNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomText(
              title: 'USD 224.45',
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: AppColors.alertRed),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5, color: AppColors.alertRed),
                      ),
                    ),
                    child: CustomText(title: '- 1 +', fontSize: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Gap(15),
        CustomButton(
          containerWidth: MediaQuery.of(context).size.width * 0.6,
          text: 'Book Now',
          textSize: 20,
          textColor: AppColors.white,
          onTap: () {},
          isBold: true,
          containerColor: AppColors.alertRed,
          borderColor: AppColors.alertRed,
          borderRadius: 22,
          padding: 5,
        ),
      ],
    );
  }
}
