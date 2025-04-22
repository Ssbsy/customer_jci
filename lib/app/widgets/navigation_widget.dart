import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/core/models/nav_model.dart';
import 'package:jci_worldcon_customer/presentations/coc_team_page.dart';
import 'package:jci_worldcon_customer/presentations/faq_page.dart';
import 'package:jci_worldcon_customer/presentations/home_page.dart';
import 'package:jci_worldcon_customer/presentations/login_page.dart';
import 'package:jci_worldcon_customer/presentations/map_page.dart';
import 'package:jci_worldcon_customer/presentations/register_page.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  final List<NavModel> navItems = [
    NavModel(icon: Icons.home, page: const HomePage()),
    NavModel(icon: Icons.language, page: FaqPage()),
    NavModel(icon: Icons.travel_explore, page: LoginPage()),
    NavModel(icon: Icons.restaurant, page: RegisterPage()),
    NavModel(icon: Icons.notifications, page: CocTeamPage()),
    NavModel(icon: Icons.star, page: MapPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
            navItems.map((item) {
              return GestureDetector(
                onTap: () => Get.to(() => item.page),
                child: Icon(item.icon),
              );
            }).toList(),
      ),
    );
  }
}
