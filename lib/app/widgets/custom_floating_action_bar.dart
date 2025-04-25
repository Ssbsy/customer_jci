import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class CustomFloatingActionBar extends StatefulWidget {
  const CustomFloatingActionBar({super.key});

  @override
  State<CustomFloatingActionBar> createState() =>
      _CustomFloatingActionBarState();
}

class _CustomFloatingActionBarState extends State<CustomFloatingActionBar> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 4,
      onPressed: () {},
      shape: CircleBorder(),
      backgroundColor: AppColors.alertRed,
      child: Assets.messageCircleIcon,
    );
  }
}
