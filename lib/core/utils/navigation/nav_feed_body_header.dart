import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:gap/gap.dart';

class NavFeedBodyHeader extends StatelessWidget {
  final String accountName;
  final String datePosted;
  const NavFeedBodyHeader({
    super.key,
    required this.accountName,
    required this.datePosted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: AppColors.black),
            ),
            child: Icon(Icons.person, size: 40),
          ),
          const Gap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(title: accountName),
                const Gap(4),
                Row(
                  children: [
                    CustomText(
                      title: datePosted,
                      textColor: AppColors.coolGray,
                    ),
                    const Gap(5),
                    const Icon(
                      Icons.travel_explore_rounded,
                      size: 16,
                      color: AppColors.coolGray,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(10),
          const Icon(Icons.more_horiz, color: AppColors.coolGray, size: 30),
          const Gap(5),
          const Icon(Icons.close, color: AppColors.coolGray, size: 30),
        ],
      ),
    );
  }
}
