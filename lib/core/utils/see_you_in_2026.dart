import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SeeYouIn2026 extends StatelessWidget {
  const SeeYouIn2026({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.344,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/see_you_in_2026_bg.png'),
            ),
          ),
          child: Center(
            child: CustomText(
              title: 'See you in 2026!',
              textColor: Color(0xFF252B42),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}
