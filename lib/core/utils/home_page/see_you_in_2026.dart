import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class SeeYouIn2026 extends StatelessWidget {
  const SeeYouIn2026({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Assets.seeYouIn2026,
        CustomText(
          title: 'See you in 2026!',
          textColor: AppColors.darkBlue,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ],
    );
  }
}
