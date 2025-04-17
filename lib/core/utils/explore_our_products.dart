import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/core/utils/shop.dart';

class ExploreOurProducts extends StatelessWidget {
  const ExploreOurProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
      child: Column(
        children: [
          CustomText(
            title: "Explore Our Products",
            fontWeight: FontWeight.bold,
            fontSize: 30,
            textColor: Color(0xFF252B42),
          ),
          const Gap(15),
          CustomText(
            title:
                "Get your limited edition World Congress 2026 event merchandise now! Show your support and commemorate the experience with our exclusive collection. Hurry, while supplies last!",
            textColor: Color(0xFF374754),
            isJustified: true,
          ),
          const Gap(15),
          const Shop(),
        ],
      ),
    );
  }
}
