import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/presentations/coc_team_page.dart';
import 'package:jci_worldcon_customer/presentations/faq_page.dart';
import 'package:jci_worldcon_customer/presentations/navigation/home_page.dart';
import 'package:jci_worldcon_customer/presentations/shop_page.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.85,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF767992), Color.fromARGB(255, 160, 148, 110)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.footerLogo,
              const Gap(30),
              const Divider(thickness: 2, color: Colors.white, endIndent: 200),
              const Gap(30),
              const Divider(thickness: 2, color: Colors.white, endIndent: 120),
              const Gap(30),

              CustomText(
                title: 'Clark, Pampanga',
                textColor: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              const Gap(25),
              CustomText(
                title: 'Quick Links',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                textColor: Colors.white,
              ),
              const Gap(25),
              Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _quickLinks('Home', () {
                    Navigator.of(context).pop();
                    Get.to(() => const HomePage());
                  }),
                  _quickLinks('Shop', () {
                    Navigator.of(context).pop();
                    Get.to(() => const ShopPage());
                  }),
                  _quickLinks('COC Team', () {
                    Navigator.of(context).pop();
                    Get.to(() => const CocTeamPage());
                  }),
                  _quickLinks('FAQ', () {
                    Navigator.of(context).pop();
                    Get.to(() => const FaqPage());
                  }),
                ],
              ),
              const Gap(15),
              Row(
                spacing: 10,
                children: [
                  Image.asset('assets/logo/facebook_logo_footer.png'),
                  Image.asset('assets/logo/twitter_logo_footer.png'),
                  Image.asset('assets/logo/instagram_logo_footer.png'),
                ],
              ),
              const Gap(15),
              CustomText(
                title: "© 2026 8Box Solutions. All rights reserved",
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }

  GestureDetector _quickLinks(String text, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: CustomText(title: text, textColor: AppColors.white),
    );
  }
}
