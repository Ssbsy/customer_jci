import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class NotifPageContent extends StatelessWidget {
  const NotifPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title:
                        'You are seen in the post by one of the '
                        'attendee of the event. Review it and reshare.',
                    maxLines: 2,
                    fontSize: 14,
                  ),
                  CustomText(title: '4d', textColor: AppColors.mediumBlue),
                ],
              ),
            ),
            Icon(Icons.circle, color: AppColors.mediumBlue, size: 20),
          ],
        ),
      ),
    );
  }
}
