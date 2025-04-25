import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/utils/hotel_page_header.dart';
import 'package:jci_worldcon_customer/core/utils/hotels.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HotelPageHeader(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Assets.worldConIagTraining,
                  const Gap(20),
                  CustomText(
                    title: 'Hotels',
                    textColor: AppColors.darkGray,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  const Gap(20),
                  Hotels(),
                ],
              ),
            ),
            const FooterWidget(),
          ],
        ),
      ),
      endDrawer: const EndDrawerWidget(),
    );
  }
}
