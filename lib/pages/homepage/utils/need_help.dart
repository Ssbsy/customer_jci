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
        const Gap(30),
        Image.asset(
          'assets/location_icon_JCI_homepage.png',
          height: 40,
          fit: BoxFit.cover,
        ),
        const Gap(15),
        CustomText(title: 'Clark, Pampanga', fontSize: 16),
        const Gap(25),
        Image.asset(
          'assets/call_icon_homepage.png',
          height: 40,
          fit: BoxFit.cover,
        ),
        const Gap(10),
        Divider(
          thickness: 5,
          color: Colors.grey.shade800,
          indent: 120,
          endIndent: 120,
        ),
        const Gap(25),
        Image.asset(
          'assets/message_icon_homepage.png',
          height: 40,
          fit: BoxFit.cover,
        ),
        const Gap(10),
        Divider(
          thickness: 5,
          color: Colors.grey.shade800,
          indent: 120,
          endIndent: 120,
        ),
        const Gap(25),
        Image.asset('assets/Clark-Map.png', fit: BoxFit.cover),
        const Gap(25),
        Row(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Twitter.png', fit: BoxFit.cover),

            Image.asset('assets/Facebook.png', fit: BoxFit.cover),

            Image.asset('assets/Instagram.png', fit: BoxFit.cover),

            Image.asset('assets/WhatsApp.png', fit: BoxFit.cover),
          ],
        ),
      ],
    );
  }
}
