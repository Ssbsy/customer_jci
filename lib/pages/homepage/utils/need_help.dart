import 'package:customer_jci/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NeedHelp extends StatelessWidget {
  const NeedHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Card(
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  CustomText(
                    title: "Need Help?",
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  const Gap(20),
                  CustomText(
                    title:
                        "For any inquiries, please don't hesitate to reachout to us - we're here to help!",
                    fontSize: 16,
                    isCentered: true,
                  ),
                  const Gap(20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 35,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE0401E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CustomText(
                      title: "Let's Chat",
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
