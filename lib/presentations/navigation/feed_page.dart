import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/core/utils/navigation/nav_feed_body.dart';
import 'package:jci_worldcon_customer/core/utils/navigation/nav_feed_header.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const NavFeedHeader(),
                const Gap(5),
                const Divider(thickness: 20),
                const Gap(5),
                NavFeedBody(),
                const FooterWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
