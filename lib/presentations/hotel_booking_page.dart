import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_app_bar.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/core/blueprints/hotel.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/constants/texts.dart';
import 'package:jci_worldcon_customer/core/utils/review_stars.dart';
import 'package:ionicons/ionicons.dart';

class HotelBookingPage extends StatelessWidget {
  final Hotel hotel;
  const HotelBookingPage({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Assets.ihotelLogoWhite,
        isAutomaticallyImplyLeading: true,
        isCenterTitle: false,
        backgroundColor: AppColors.mutedBluishGray,
        foregroundColor: AppColors.white,
        actionWidgets: [EndDrawerButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: hotel.hotelName,
                fontSize: 25,
                textColor: AppColors.darkBluishGray,
              ),
              const ReviewStars(size: 25),
              const Gap(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Assets.shareLocationIcon,
                  Expanded(
                    child: CustomText(
                      richText: TextSpan(
                        text: Texts.hiltonClarkSunValleyDescription,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' - see on map',
                            style: TextStyle(color: AppColors.mediumBlue),
                          ),
                        ],
                      ),
                      maxLines: 5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      endDrawer: const EndDrawerWidget(),
    );
  }
}
