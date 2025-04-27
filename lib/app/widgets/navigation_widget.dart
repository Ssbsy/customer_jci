import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/presentations/qr_code_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavigationWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavigationWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      Icons.home,
      Icons.language,
      MdiIcons.airballoonOutline,
      MdiIcons.silverwareVariant,
      Icons.notifications_none,
      Icons.star_border,
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...List.generate(icons.length, (index) {
            final isSelected = index == currentIndex;
            return GestureDetector(
              onTap: () => onTap(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icons[index],
                    color: isSelected ? AppColors.alertRed : AppColors.black,
                  ),
                  const SizedBox(height: 4),
                  Container(
                    height: 3,
                    width: 20,
                    decoration: BoxDecoration(
                      color:
                          isSelected ? AppColors.alertRed : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            );
          }),
          GestureDetector(
            onTap: () => Get.to(() => const QrCodePage()),
            child: SizedBox(height: 24, child: Assets.profileIcon),
          ),
        ],
      ),
    );
  }
}
