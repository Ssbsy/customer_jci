import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _card(
          context,
          'assets/images/white_hoodie.png',
          'Hoodie',
          'Available: 150',
          () {},
        ),
        const Gap(15),
        _card(
          context,
          'assets/images/tumbler_01.png',
          'Tumbler',
          'Available: 76',
          () {},
        ),
        const Gap(15),
        _card(
          context,
          'assets/images/umbrella_01.png',
          'Umbrella',
          'Available: 45',
          () {},
        ),
        const Gap(15),
        _card(
          context,
          'assets/images/planner.png',
          'Planner',
          'Available: 90',
          () {},
        ),
      ],
    );
  }

  Card _card(
    BuildContext context,
    String _image,
    String title,
    String subTitle,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 3,
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
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: CustomButton(
              text: 'Buy Now',
              onTap: onTap,
              containerColor: AppColors.alertRed,
              textColor: AppColors.white,
              borderColor: AppColors.alertRed,
              borderRadius: 20,
            ),
          ),
        ],
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
