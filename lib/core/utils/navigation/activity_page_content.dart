import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class ActivityPageContent extends StatelessWidget {
  final Widget img;
  final String title;
  final String location;
  const ActivityPageContent({
    super.key,
    required this.img,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22)),
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          img,
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
                        title: title,
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
                            title: location,
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
                        onTap: () {},
                        padding: 5,
                        containerWidth:
                            MediaQuery.of(context).size.width * 0.25,
                        borderRadius: 12,
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
