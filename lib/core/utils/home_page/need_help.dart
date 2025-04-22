import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/presentations/lets_chat_page.dart';

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
                  CustomButton(
                    containerWidth: MediaQuery.of(context).size.width * 0.4,
                    text: "Let's Chat",
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.of(context).pop();
                      Get.to(() => const LetsChatPage());
                    },
                    borderColor: AppColors.alertRed,
                    containerColor: AppColors.alertRed,
                    borderRadius: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        const Gap(30),
        Assets.locationIconJciHomepage,
        const Gap(15),
        CustomText(title: 'Clark, Pampanga', fontSize: 16),
        const Gap(25),
        Assets.callIconHomepage,
        const Gap(10),
        Divider(
          thickness: 5,
          color: Colors.grey.shade800,
          indent: 120,
          endIndent: 120,
        ),
        const Gap(25),
        Assets.messageIconHomepage,
        const Gap(10),
        Divider(
          thickness: 5,
          color: Colors.grey.shade800,
          indent: 120,
          endIndent: 120,
        ),
        const Gap(25),
        Assets.clarkMap,
        const Gap(25),
        Row(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.twitter,
            Assets.facebook,
            Assets.instagram,
            Assets.whatsApp,
          ],
        ),
      ],
    );
  }
}
