import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class EditProfilePhoto extends StatelessWidget {
  const EditProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: 'Your Photo',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                CustomText(title: 'This will displayed on your profile.'),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      padding: 10,
                      containerWidth: MediaQuery.of(context).size.width * 0.25,
                      text: 'Upload New',
                      onTap: () {},
                      borderColor: AppColors.mediumBlue,
                      borderRadius: 22,
                    ),
                    CustomButton(
                      padding: 10,
                      containerWidth: MediaQuery.of(context).size.width * 0.2,
                      text: 'Save',
                      textColor: AppColors.white,
                      onTap: () {},
                      borderColor: AppColors.alertRed,
                      containerColor: AppColors.alertRed,
                      borderRadius: 22,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
