import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/presentations/buy_ticket_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/presentations/qr_code_page.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(color: Color(0xFF767992)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  title: 'Regular Ticket',
                  textColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  title: "Get your World Congress 2025 tickets \$560",
                  textColor: Colors.white,
                  fontSize: 12,
                ),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: '20 Days 22:30:21',
                      textColor: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    const Gap(10),
                    CustomButton(
                      text: 'Buy Now',
                      textSize: 12,
                      textColor: AppColors.white,
                      onTap: () => Get.to(const BuyTicketPage()),
                      borderColor: AppColors.white,
                      borderRadius: 22,
                      containerWidth: MediaQuery.of(context).size.width * 0.23,
                      padding: 5,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 30,
                      ),
                      child: Assets.jciWorldConLogo,
                    ),
                    if (globals.isLoggedIn)
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => Get.to(() => const QrCodePage()),
                            child: Assets.profileIcon,
                          ),
                          Builder(
                            builder: (context) {
                              return IconButton(
                                onPressed: () {
                                  Scaffold.of(context).openEndDrawer();
                                },
                                icon: Icon(Icons.menu, size: 30, weight: 2),
                              );
                            },
                          ),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
