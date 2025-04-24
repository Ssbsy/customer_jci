import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class CocTeamPage extends StatelessWidget {
  const CocTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: 'The COC-team is powered by',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        _card('La Savilla', Assets.laSavillaPhoto),
                        const Gap(20),
                        _card('Richard Lim Jr', Assets.richardLimJrPhoto),
                      ],
                    ),
                  ),
                  const FooterWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
      endDrawer: const EndDrawerWidget(),
    );
  }

  Card _card(String name, Widget image) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: CustomText(
              title: name,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.alertRed,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: CustomText(
                  title: '_____________________________',
                  textColor: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
