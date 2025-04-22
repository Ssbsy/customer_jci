import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class AccountSettingsProfile extends StatelessWidget {
  const AccountSettingsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        spacing: 30,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(52),
            ),
            child: Icon(Icons.person, size: 70),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      title: 'John Smith',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    CustomText(title: ' / General'),
                  ],
                ),
                const Gap(20),
                CustomText(
                  title: 'Update your username and manage your account',
                  maxLines: 3,
                  fontSize: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
