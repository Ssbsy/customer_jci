import 'package:customer_jci/components/end_drawer_widget.dart';
import 'package:customer_jci/components/footer_widget.dart';
import 'package:customer_jci/components/header_widget.dart';
import 'package:customer_jci/globals.dart' as globals;
import 'package:customer_jci/pages/homepage/utils/jci_world_congress_2026.dart';
import 'package:customer_jci/pages/homepage/utils/explore_our_products.dart';
import 'package:customer_jci/pages/homepage/utils/frequently_asked_questions.dart';
import 'package:customer_jci/pages/homepage/utils/highlights_register_now.dart';
import 'package:customer_jci/pages/homepage/utils/need_help.dart';
import 'package:customer_jci/pages/homepage/utils/partnerships.dart';
import 'package:customer_jci/pages/homepage/utils/ready_for_jci_world_congress_2022.dart';
import 'package:customer_jci/pages/homepage/utils/see_you_in_2026.dart';
import 'package:customer_jci/pages/homepage/utils/welcome_to_clark_pampanga.dart';
import 'package:customer_jci/pages/homepage/utils/world_congress_2026.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(),

          Expanded(
            child: RefreshIndicator(
              onRefresh: () => globals.refreshPage(this),
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
                    SeeYouIn2026(),

                    const Gap(25),
                    FooterWidget(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: const EndDrawerWidget(),
    );
  }
}
