import 'package:customer_jci/components/custom_text.dart';
import 'package:customer_jci/pages/homepage/utils/jci_world_congress_2026.dart';
import 'package:customer_jci/pages/homepage/utils/explore_our_products.dart';
import 'package:customer_jci/pages/homepage/utils/frequently_asked_questions.dart';
import 'package:customer_jci/pages/homepage/utils/highlights_register_now.dart';
import 'package:customer_jci/pages/homepage/utils/need_help.dart';
import 'package:customer_jci/pages/homepage/utils/partnerships.dart';
import 'package:customer_jci/pages/homepage/utils/ready_for_jci_world_congress_2022.dart';
import 'package:customer_jci/pages/homepage/utils/welcome_to_clark_pampanga.dart';
import 'package:customer_jci/pages/homepage/utils/world_congress_2026.dart';
import 'package:flutter/material.dart';
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

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  JciWorldCongress2026(),
                  const Gap(25),
                  WorldCongress2026(),
                  const Gap(25),
                  WelcomeToClarkPampanga(),
                  const Gap(25),
                  Partnerships(),
                  const Gap(25),
                  HighlightsRegisterNow(),
                  const Gap(25),
                  ExploreOurProducts(),
                  const Gap(25),
                  ReadyForJciWorldCongress2026(),
                  const Gap(25),
                  FrequentlyAskedQuestions(),
                  const Gap(25),
                  NeedHelp(),
                  const Gap(25),
                  Column(children: [
                      
                    ],
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
