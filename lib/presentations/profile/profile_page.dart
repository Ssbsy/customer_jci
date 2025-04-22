import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/core/utils/profile_page_about_me.dart';
import 'package:jci_worldcon_customer/core/utils/profile/profile_qr.dart';
import 'package:jci_worldcon_customer/presentations/profile/account_settings_screen.dart';
import 'package:jci_worldcon_customer/presentations/profile/edit_profile_screen.dart';
import 'package:jci_worldcon_customer/presentations/profile/orders_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.167,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile_bg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          title: 'Unite for Impact',
                          textColor: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          title:
                              'Welcome to JCI World Congress 2026, where global leaders collaborate to create lasting change in the heart of the Philippines!',
                          maxLines: 3,
                          isCentered: true,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const Gap(25),
                  const ProfileQr(),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _containerUnderQR(
                        'Edit profile',
                        icon: const Icon(Icons.edit, size: 16),
                        onTap: () => Get.to(() => const EditProfileScreen()),
                      ),
                      const Gap(10),
                      _containerUnderQR(
                        'Account Settings',
                        onTap:
                            () => Get.to(() => const AccountSettingsScreen()),
                      ),
                      const Gap(10),
                      _containerUnderQR(
                        'Orders',
                        onTap: () => Get.to(() => const OrdersScreen()),
                      ),
                    ],
                  ),
                  const Gap(20),
                  const ProfilePageAboutMe(),
                  const Gap(25),
                ],
              ),
            ),
          ),
        ],
      ),
      endDrawer: const EndDrawerWidget(),
    );
  }

  GestureDetector _containerUnderQR(
    String title, {
    Icon? icon,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.red.shade700),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(child: _actions(title, icon: icon)),
      ),
    );
  }

  Row _actions(String title, {Icon? icon}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomText(title: title, fontSize: 12),
        if (icon != null) ...[const SizedBox(width: 10), icon],
      ],
    );
  }
}
