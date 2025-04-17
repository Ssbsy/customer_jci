import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          _card(
            context,
            'assets/images/white_tumbler_1.png',
            'Hoodie',
            'Available: 150',
          ),
          const Gap(15),
          _card(
            context,
            'assets/images/tumbler_01.png',
            'Tumbler',
            'Available: 76',
          ),
          const Gap(15),
          _card(
            context,
            'assets/images/umbrella_01.png',
            'Umbrella',
            'Available: 45',
          ),
          const Gap(15),
          _card(
            context,
            'assets/images/planner.png',
            'Planner',
            'Available: 90',
          ),
        ],
      ),
    );
  }

  Card _card(
    BuildContext context,
    String _image,
    String title,
    String subTitle,
  ) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(_image, height: 300, fit: BoxFit.cover),
            Row(
              spacing: 4,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 10, color: Colors.grey),
                Icon(Icons.circle, size: 10, color: Colors.blue.shade100),
                Icon(Icons.circle, size: 10, color: Colors.green.shade200),
                Icon(Icons.circle, size: 10, color: Colors.orange.shade300),
                Icon(Icons.circle, size: 10, color: Colors.redAccent.shade200),
                Icon(Icons.circle, size: 10),
              ],
            ),
            const Gap(10),
            _row(title, Color(0xFF252B42)),
            _row(subTitle, Colors.deepOrange),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFE0401E),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Center(
                  child: CustomText(title: 'Buy Now', textColor: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _row(String title, Color _color) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          CustomText(
            title: title,
            fontWeight: FontWeight.bold,
            textColor: _color,
          ),
        ],
      ),
    );
  }
}
