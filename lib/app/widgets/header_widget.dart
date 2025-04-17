import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/presentations/buy_ticket_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(color: Color(0xFF767992)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                title: 'Regular Ticket',
                textColor: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              const Gap(5),
              CustomText(
                title: "Get your World Congress 2025 tickets \$560",
                textColor: Colors.white,
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    title: '20 Days 22:30:21',
                    textColor: Colors.white,
                  ),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () => Get.to(const BuyTicketPage()),
                        child: CustomText(
                          title: "Buy Now",
                          textColor: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          elevation: 1,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Image.asset(
                        'assets/logo/jci_worldcon_logo.png',
                        height: 80,
                        width: 80,
                      ),
                    ),
                    if (globals.isLoggedIn)
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/profile_icon.png',
                            height: 30,
                            fit: BoxFit.contain,
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
        ),
      ],
    );
  }
}
