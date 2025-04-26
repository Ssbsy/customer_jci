import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/utils/navigation/nav_feed_body_header.dart';
import 'package:jci_worldcon_customer/core/utils/navigation/nav_feed_content.dart';

class NavFeedBody extends StatefulWidget {
  const NavFeedBody({super.key});

  @override
  State<NavFeedBody> createState() => _NavFeedBodyState();
}

class _NavFeedBodyState extends State<NavFeedBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavFeedBodyHeader(
          accountName: 'Jen Kim',
          datePosted: 'April 19 at 2:20 PM',
        ),
        const Gap(10),
        NavFeedContent(
          description: 'Lighting up the dusk sky',
          imageAsset: Assets.feedPost01,
          reactors: 'Natasha Lim and 13 others',
          comments: '6',
          shares: '4',
        ),

        const Gap(10),
        Divider(thickness: 10),
        const Gap(10),

        NavFeedBodyHeader(
          accountName: 'Peter Parker',
          datePosted: 'April 19 at 2:20 PM',
        ),
        const Gap(10),
        NavFeedContent(
          description:
              "Are you ready to enjoy more Chickenjoyest moments? Try the new Chickenjoy Perfect Pairs, starting at P120! Price Varies.",
          imageAsset: Assets.feedPost01,
          reactors: '101K',
          comments: '6',
          shares: '4',
        ),

        const Gap(10),
        Divider(thickness: 10),
        const Gap(10),

        NavFeedBodyHeader(
          accountName: 'Jen Kim',
          datePosted: 'April 19 at 2:20 PM',
        ),
        const Gap(10),
        NavFeedContent(
          description: "Cruisin' through the paradise ",
          imageAsset: Assets.feedPost01,
          reactors: 'Livy Jones and 13 others',
          comments: '6',
          shares: '4',
        ),
      ],
    );
  }
}
