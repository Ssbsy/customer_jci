import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/presentations/pages/buy_ticket_page.dart';
import 'package:jci_worldcon_customer/presentations/pages/home_page.dart';
import 'package:jci_worldcon_customer/presentations/pages/link_ticket_page.dart';
import 'package:jci_worldcon_customer/presentations/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EndDrawerWidget extends StatefulWidget {
  const EndDrawerWidget({Key? key}) : super(key: key);

  @override
  State<EndDrawerWidget> createState() => _EndDrawerWidgetState();
}

class _EndDrawerWidgetState extends State<EndDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: <Widget>[
          Image.asset('assets/logo-login 1.png', fit: BoxFit.cover),
          const Gap(25),
          _action(
            'Home',
            onTap: () {
              Navigator.pop(context);
              Get.to(() => const HomePage());
            },
          ),
          _action(
            'Profile',
            onTap: () {
              Navigator.pop(context);
              Get.to(() => ProfilePage());
            },
          ),
          _action(
            'Buy tickets',
            onTap: () {
              Navigator.pop(context);
              Get.to(() => const BuyTicketPage());
            },
          ),
          _action(
            'Link tickets',
            onTap: () {
              Navigator.pop(context);
              Get.to(() => const LinkTicketPage());
            },
          ),
          _action(
            'Hotel',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _action(
            'Map',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _action(
            'Shop',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _action(
            'FAQ',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _action(
            'COC Team',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          _action(
            'Sign Out',
            color: Colors.deepOrange.shade700,
            textColor: Colors.white,
            onTap: () {
              globals.isLoggedIn = false;
              Navigator.pop(context);
              Get.to(() => HomePage());
            },
          ),
        ],
      ),
    );
  }

  GestureDetector _action(
    String title, {
    Color color = Colors.transparent,
    Color textColor = Colors.black,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(width: 1, color: Colors.grey.shade500),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(child: CustomText(title: title, textColor: textColor)),
        ),
      ),
    );
  }
}
