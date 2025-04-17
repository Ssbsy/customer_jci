import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class WelcomeToClarkPampanga extends StatelessWidget {
  const WelcomeToClarkPampanga({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      child: Stack(
        children: [
          Image.asset(
            'assets/Welcome_to_Clark_Pampanga_picture.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: CustomText(
                title: 'Welcome to Clark Pampanga!',
                fontSize: 25,
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
