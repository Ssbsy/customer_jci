import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/constants/texts.dart';

class ReadyForJciWorldCongress2026 extends StatelessWidget {
  const ReadyForJciWorldCongress2026({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Assets.readyForJciWorldCongress2026Img,
          const Gap(10),
          CustomText(
            title: "Ready for JCI World Congress 2026?",
            textColor: AppColors.mutedBluishGray,
            fontSize: 18,
            maxLines: 2,
            fontWeight: FontWeight.bold,
          ),
          const Gap(10),
          CustomText(
            title: Texts.readyForJciWorldCongressDescription,
            fontSize: 14,
            maxLines: 10,
            fontWeight: FontWeight.w300,
            isJustified: true,
          ),
          const Gap(15),
          CustomButton(
            text: 'Buy Ticket',
            onTap: () {},
            containerColor: AppColors.alertRed,
            borderColor: AppColors.alertRed,
            textColor: AppColors.white,
            borderRadius: 22,
            textSize: 14,
            padding: 10,
          ),
        ],
      ),
    );
  }
}
