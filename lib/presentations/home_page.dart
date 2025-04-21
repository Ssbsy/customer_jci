import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/core/utils/home_page/jci_world_congress_2026.dart';
import 'package:jci_worldcon_customer/core/utils/explore_our_products.dart';
import 'package:jci_worldcon_customer/core/utils/frequently_asked_questions.dart';
import 'package:jci_worldcon_customer/core/utils/highlights_register_now.dart';
import 'package:jci_worldcon_customer/core/utils/need_help.dart';
import 'package:jci_worldcon_customer/core/utils/partnerships.dart';
import 'package:jci_worldcon_customer/core/utils/ready_for_jci_world_congress_2022.dart';
import 'package:jci_worldcon_customer/core/utils/see_you_in_2026.dart';
import 'package:jci_worldcon_customer/core/utils/welcome_to_clark_pampanga.dart';
import 'package:jci_worldcon_customer/core/utils/world_congress_2026.dart';
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
