import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/core/models/events.dart';
import 'package:jci_worldcon_customer/core/utils/navigation/rating_page_content.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  final event = [
    Events(
      name: 'LeadLocal: JCI Clark Community Dialogues',
      location: 'Clark Polytechnic Conference Hall',
      date: 'November 2026',
    ),
    Events(
      name: 'LeadLocal: JCI Clark Community Dialogues',
      location: 'Clark Polytechnic Conference Hall',
      date: 'November 2026',
    ),
    Events(
      name: 'LeadLocal: JCI Clark Community Dialogues',
      location: 'Clark Polytechnic Conference Hall',
      date: 'November 2026',
    ),
    Events(
      name: 'LeadLocal: JCI Clark Community Dialogues',
      location: 'Clark Polytechnic Conference Hall',
      date: 'November 2026',
    ),
    Events(
      name: 'LeadLocal: JCI Clark Community Dialogues',
      location: 'Clark Polytechnic Conference Hall',
      date: 'November 2026',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'Registered Events',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const Gap(10),
            ...List.generate(event.length, (index) {
              final events = event[index];
              return Column(
                children: [
                  RatingPageContent(event: events),
                  const Gap(10),
                  if (index != event.length - 1) const Divider(thickness: 5),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
