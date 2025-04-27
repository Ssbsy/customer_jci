import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/review_stars.dart';
import 'package:jci_worldcon_customer/core/models/events.dart';

class RatingPageContent extends StatelessWidget {
  final Events event;
  const RatingPageContent({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        spacing: 5,
        children: [
          CustomText(
            title: event.name,
            maxLines: 2,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          Row(
            spacing: 5,
            children: [
              Icon(Icons.pin_drop, color: AppColors.alertRed),
              CustomText(title: event.location),
            ],
          ),
          Row(
            spacing: 5,
            children: [
              Icon(Icons.calendar_month, color: AppColors.alertRed),
              CustomText(title: event.date),
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 10,
            children: [
              CustomButton(
                text: 'Register Again',
                onTap: () {},
                containerWidth: currentWidth * 0.3,
                textColor: AppColors.alertRed,
                padding: 5,
                borderRadius: 10,
              ),
              CustomButton(
                text: 'Write Review',
                onTap: () {},
                containerWidth: currentWidth * 0.3,
                textColor: AppColors.white,
                containerColor: AppColors.alertRed,
                borderColor: AppColors.alertRed,
                padding: 5,
                borderRadius: 10,
              ),
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [CustomText(title: 'Quick review'), ReviewStars()],
          ),
        ],
      ),
    );
  }
}
