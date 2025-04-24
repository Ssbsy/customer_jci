import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';

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
      onPressed: () {},
      backgroundColor: AppColors.alertRed,
      child: Icon(Icons.chat_bubble, color: AppColors.white),
      elevation: 4,
    );
  }
}
