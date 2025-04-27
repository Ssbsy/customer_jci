import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/models/activity.dart';
import 'package:jci_worldcon_customer/core/utils/navigation/activity_page_content.dart';
import 'package:jci_worldcon_customer/presentations/navigation/activity_detailed_screen.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final activities = [
    Activity(
      title: 'Hot Air Ballon Ride',
      location: 'Clark Freeport Zone',
      img: Assets.activityPageContent01,
    ),
    Activity(
      title: 'Helicopter Tour',
      location: 'Clark',
      img: Assets.activityPageContent02,
    ),
    Activity(
      title: 'ATV Adventure',
      location: 'Sapang Bato',
      img: Assets.activityPageContent03,
    ),
    Activity(
      title: 'Paragliding',
      location: 'Clark Freeport',
      img: Assets.activityPageContent04,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ...activities.map(
                  (activity) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ActivityPageContent(
                      activity: activity,
                      onExplore:
                          () => Get.to(
                            () => ActivityDetailedScreen(acitivity: activity),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const FooterWidget(),
        ],
      ),
    );
  }
}
