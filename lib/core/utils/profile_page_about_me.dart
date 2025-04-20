import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class ProfilePageAboutMe extends StatelessWidget {
  const ProfilePageAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: 'About me',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(title: 'Location', textColor: Colors.grey.shade700),
                const Gap(30),
                CustomText(
                  title: 'Organization',
                  textColor: Colors.grey.shade700,
                ),
                CustomText(title: 'Philippines', fontWeight: FontWeight.bold),
                const Gap(30),
                CustomText(
                  title: 'Branch Position',
                  textColor: Colors.grey.shade700,
                ),
                const Gap(30),
                CustomText(
                  title: 'Phone number',
                  textColor: Colors.grey.shade700,
                ),
                CustomText(title: "()"),
                const Gap(30),
                CustomText(title: "Email", textColor: Colors.grey.shade700),
                CustomText(
                  title: 'Johnsmith@gmail.com',
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),

          const Gap(40),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: 'Transaction History',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),

              const Gap(10),

              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  spacing: 15,
                  children: [
                    Icon(Icons.search, color: Colors.grey, size: 15),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 15),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
