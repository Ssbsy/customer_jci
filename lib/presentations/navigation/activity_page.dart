import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/utils/navigation/activity_page_content.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 10,
            children: [
              ActivityPageContent(
                img: Assets.activityPageContent01,
                title: 'Hot Air Balloon Ride',
                location: 'Clark Freeport Zone',
              ),
              ActivityPageContent(
                img: Assets.activityPageContent01,
                title: 'Helicopter Tour',
                location: 'Clark',
              ),
              ActivityPageContent(
                img: Assets.activityPageContent01,
                title: 'ATV Adventure',
                location: 'Sapang Bato',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
