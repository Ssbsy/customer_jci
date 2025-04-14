import 'package:customer_jci/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Column(
            children: [
              Column(
                children: [
                  CustomText(title: 'Regular Ticket'),
                  CustomText(
                    title: "Get your World Congress 2025 tickets \$560 ",
                  ),
                  const Gap(5),
                  Row(
                    children: [
                      CustomText(title: '20 Days 22:30:21'),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(child: Text('Buy Now')),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
