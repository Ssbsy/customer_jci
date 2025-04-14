import 'package:customer_jci/components/custom_text.dart';
import 'package:customer_jci/pages/homepage/utils/JCI_World_Congress_2026.dart';
import 'package:customer_jci/pages/homepage/utils/world_congress_2026.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    const Gap(10), // Fixed spacing here
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
                        child: CustomText(
                          title: "Buy Now",
                          textColor: Colors.white,
                          fontSize: 11,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Image.asset(
                      'assets/JCI - logo - png.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Scrollable content starts here
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  JciWorldCongress2026(),
                  const Gap(25),
                  WorldCongress2026(),
                  const Gap(25),
                  Container(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        SvgPicture.asset('assets/Welcome to Mongolia.svg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
