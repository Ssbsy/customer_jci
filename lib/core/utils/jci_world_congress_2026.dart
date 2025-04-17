import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/presentations/pages/login_page.dart';
import 'package:jci_worldcon_customer/presentations/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/globals.dart';

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
          Image.asset('assets/home_background_01.png'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(70),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: CustomText(
                  title: 'JCI World Congress 2026',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  textColor: Colors.white,
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: CustomText(
                  title: 'Connect, Lead, Inspire!',
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  textColor: Colors.white,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 40),
                child: Container(
                  padding: const EdgeInsets.all(20),
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
                            fontSize: 18,
                          ),
                          CustomText(
                            title: '\$560',
                            textColor: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          CustomText(
                            title: '2026-11-15',
                            fontWeight: FontWeight.w700,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                      CustomText(
                        title: '20 Days 22:30:31',
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
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.withAlpha((0.5 * 255).toInt()),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
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
                            fontSize: 18,
                          ),
                        ],
                      ),
                      CustomText(
                        title: 'Clark Pampanga',
                        textColor: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      const Gap(10),
                      Row(
                        spacing: 5,
                        children: [
                          SvgPicture.asset('assets/calendar_icon.svg'),
                          CustomText(
                            title: 'Date',
                            fontWeight: FontWeight.bold,
                            textColor: Colors.white,
                            fontSize: 18,
                          ),
                        ],
                      ),
                      CustomText(
                        title: 'November 11th to 15th, 2026',
                        textColor: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ),
              ),

              const Gap(25),

              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 25,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red.shade600,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: GestureDetector(
                    onTap: () => Get.to(const RegisterPage()),
                    child: CustomText(
                      title: globals.isLoggedIn ? 'Buy Now' : 'Register',
                      textColor: Colors.white,
                    ),
                  ),
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
