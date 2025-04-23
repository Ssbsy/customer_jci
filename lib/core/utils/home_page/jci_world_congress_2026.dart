import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/presentations/login_page.dart';
import 'package:jci_worldcon_customer/presentations/register_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class JciWorldCongress2026 extends StatefulWidget {
  const JciWorldCongress2026({super.key});

  @override
  State<JciWorldCongress2026> createState() => _JciWorldCongress2026State();
}

class _JciWorldCongress2026State extends State<JciWorldCongress2026> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Stack(
        children: [
          Assets.homeBackground01(context),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(70),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: CustomText(
                  title: 'JCI World Congress 2026',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  textColor: Colors.white,
                ),
              ),
              const Gap(5),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: CustomText(
                  title: 'Connect, Lead, Inspire!',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  textColor: Colors.white,
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 40),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.withAlpha((0.5 * 255).toInt()),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            title: 'Regular Ticket',
                            fontWeight: FontWeight.bold,
                            textColor: Colors.white,
                            fontSize: 16,
                          ),
                          CustomText(
                            title: '\$560',
                            textColor: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          CustomText(
                            title: '2026-11-15',
                            fontWeight: FontWeight.w700,
                            textColor: Colors.white,
                            fontSize: 12,
                          ),
                        ],
                      ),
                      CustomText(
                        title: '20 Days 22:30:31',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),

              const Gap(15),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 40),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.withAlpha((0.5 * 255).toInt()),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 5,
                        children: [
                          Icon(Icons.location_pin, color: Colors.red, size: 18),
                          CustomText(
                            title: 'Location',
                            fontWeight: FontWeight.bold,
                            textColor: Colors.white,
                            fontSize: 16,
                          ),
                        ],
                      ),
                      CustomText(
                        title: 'Clark Pampanga',
                        textColor: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                      const Gap(5),
                      Row(
                        spacing: 10,
                        children: [
                          Assets.calendarIcon,
                          CustomText(
                            title: 'Date',
                            fontWeight: FontWeight.bold,
                            textColor: Colors.white,
                            fontSize: 16,
                          ),
                        ],
                      ),
                      CustomText(
                        title: 'November 11th to 15th, 2026',
                        textColor: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ],
                  ),
                ),
              ),

              const Gap(25),

              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: CustomButton(
                  text: globals.isLoggedIn ? 'Buy Now' : 'Register Now',
                  textSize: 12,
                  onTap: () => Get.to(const RegisterPage()),
                  containerWidth: MediaQuery.of(context).size.width * 0.4,
                  containerColor: AppColors.alertRed,
                  borderColor: AppColors.alertRed,
                  borderRadius: 22,
                  textColor: AppColors.white,
                  isBold: true,
                  padding: 10,
                ),
              ),
              const Gap(10),
              if (!globals.isLoggedIn)
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    spacing: 5,
                    children: [
                      CustomText(
                        title: 'Already have an account?',
                        textColor: Colors.white,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const LoginPage())?.then((_) {
                            setState(() {});
                          });
                        },
                        child: CustomText(
                          title: 'Log In',
                          textColor: Colors.white,
                          underline: true,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
