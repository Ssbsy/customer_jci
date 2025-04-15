import 'package:customer_jci/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Partnerships extends StatelessWidget {
  const Partnerships({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(title: 'Powered by partnerships with '),
        Image.asset('assets/Philippine_Airlines_png.png'),
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
