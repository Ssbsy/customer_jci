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
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CustomText(
                    title: "Need Help?",
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  const Gap(15),
                  CustomText(
                    title:
                        "For any inquiries, please don't hesitate to reachout to us - we're here to help!",
                    fontSize: 14,
                    maxLines: 10,
                    isCentered: true,
                  ),
                  const Gap(15),
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
        CustomText(title: 'Clark, Pampanga', fontSize: 14),
        const Gap(25),
        Assets.callIconHomepage,
        const Gap(10),
        Divider(
          thickness: 2,
          color: Colors.grey.shade800,
          indent: 50,
          endIndent: 50,
        ),
        const Gap(25),
        Assets.messageIconHomepage,
        const Gap(10),
        Divider(
          thickness: 2,
          color: Colors.grey.shade800,
          indent: 50,
          endIndent: 50,
        ),
        const Gap(25),
        Container(padding: const EdgeInsets.all(20), child: Assets.clarkMap),
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
