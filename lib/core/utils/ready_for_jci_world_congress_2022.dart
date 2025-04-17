import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ReadyForJciWorldCongress2026 extends StatelessWidget {
  const ReadyForJciWorldCongress2026({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Image.asset(
            'assets/images/ready_for_jci_Manila_Congress_2026_img.png',
            fit: BoxFit.cover,
          ),
          const Gap(10),
          CustomText(
            title: "Ready for JCI World Congress 2026?",
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          const Gap(10),
          CustomText(
            title:
                "The biggest global gathering of young leaders is coming to Clark, Pampanga! Mark your calendars for an unforgettable experience filled with networking, innovation, and impact.",
            fontSize: 16,
            isJustified: true,
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFE0401E),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Center(
              child: CustomText(title: 'Buy Ticket', textColor: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
