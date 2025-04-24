import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class OrderScreenItem extends StatelessWidget {
  const OrderScreenItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.ordersImg,
            const Gap(15),
            CustomText(
              title: 'King One Bedroom Suite',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            CustomText(
              title: 'June 09 - 17, 2026',
              textColor: AppColors.mutedPurple,
            ),
            const Gap(30),
            CustomText(title: '1 guest', textColor: AppColors.mutedPurple),
            CustomText(
              title: '\$ 2048 (Payment of 4)',
              textColor: AppColors.mutedPurple,
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
