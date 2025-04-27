import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/core/models/activity.dart';

class ActivityPageContent extends StatelessWidget {
  final Activity activity;
  final VoidCallback onExplore;
  const ActivityPageContent({
    super.key,
    required this.activity,
    required this.onExplore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: AppColors.veryLightBeige,
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          activity.img,
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height * 0.17,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: activity.title,
                        fontWeight: FontWeight.bold,
                        textColor: AppColors.darkBlue,
                        fontSize: 18,
                      ),
                      Row(
                        spacing: 5,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mutedPurple,
                            size: 15,
                          ),
                          CustomText(
                            title: activity.location,
                            textColor: AppColors.mutedPurple,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        text: 'Explore',
                        textColor: AppColors.mutedTeal,
                        onTap: onExplore,
                        padding: 5,
                        containerWidth:
                            MediaQuery.of(context).size.width * 0.25,
                        borderRadius: 12,
                        borderColor: AppColors.mutedTeal,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
