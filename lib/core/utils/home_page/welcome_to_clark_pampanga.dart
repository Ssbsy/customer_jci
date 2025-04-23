import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class WelcomeToClarkPampanga extends StatelessWidget {
  const WelcomeToClarkPampanga({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      child: Stack(
        children: [
          Assets.welcomeToClarkPampangaPicture,
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: CustomText(
                title: 'Welcome to Clark Pampanga!',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                textColor: Color(0xFF252B42),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
