import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class Partnerships extends StatelessWidget {
  const Partnerships({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(title: 'Powered by partnerships with '),
        Assets.philippineAirlinesPng,
        const Gap(15),
        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.circle, color: Colors.grey, size: 10),
            Icon(Icons.circle, color: Colors.blue.shade700, size: 10),
            Icon(Icons.circle, color: Colors.grey, size: 10),
            Icon(Icons.circle, color: Colors.grey, size: 10),
            Icon(Icons.circle, color: Colors.grey, size: 10),
            Icon(Icons.circle, color: Colors.grey, size: 10),
            Icon(Icons.circle, color: Colors.grey, size: 10),
            Icon(Icons.circle, color: Colors.grey, size: 10),
          ],
        ),
      ],
    );
  }
}
