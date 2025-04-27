import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/core/utils/navigation/notif_page_content.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: double.infinity,
      child: Column(
        children: [
          NotifPageContent(),
          const Gap(10),
          Divider(indent: 10, endIndent: 10),
        ],
      ),
    );
  }
}
