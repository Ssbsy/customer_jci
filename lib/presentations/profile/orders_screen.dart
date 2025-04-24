import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_floating_action_bar.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/utils/profile/order_screen_item.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: 'Orders',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      textColor: AppColors.darkBlue,
                    ),
                    const OrderScreenItem(),
                    const Gap(10),
                    CustomText(
                      title: 'Tickets',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    const Gap(10),
                    Card(
                      elevation: 4,
                      color: AppColors.white,
                      child: Assets.ordersScreenTicketImg,
                    ), // Since most ng info dito mangagaling sa API, img muna ginamit ko.
                    const Gap(30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: const EndDrawerWidget(),
      floatingActionButton: const CustomFloatingActionBar(),
    );
  }
}
