import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/presentations/buy_ticket_page.dart';
import 'package:jci_worldcon_customer/presentations/coc_team_page.dart';
import 'package:jci_worldcon_customer/presentations/faq_page.dart';
import 'package:jci_worldcon_customer/presentations/navigation/home_page.dart';
import 'package:jci_worldcon_customer/presentations/hotel_page.dart';
import 'package:jci_worldcon_customer/presentations/link_ticket_page.dart';
import 'package:jci_worldcon_customer/presentations/map_page.dart';
import 'package:jci_worldcon_customer/presentations/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/presentations/shop_page.dart';

class EndDrawerWidget extends StatefulWidget {
  const EndDrawerWidget({Key? key}) : super(key: key);

  @override
  State<EndDrawerWidget> createState() => _EndDrawerWidgetState();
}

class _EndDrawerWidgetState extends State<EndDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          children: <Widget>[
            Image.asset(
              'assets/logo/jci_worldCon_logo-removebg-preview.png',
              fit: BoxFit.contain,
              height: 80,
            ),
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
                Get.to(() => const HotelPage());
              },
            ),
            _action(
              'Map',
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const MapPage());
              },
            ),
            _action(
              'Shop',
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ShopPage());
              },
            ),
            _action(
              'FAQ',
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const FaqPage());
              },
            ),
            _action(
              'COC Team',
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const CocTeamPage());
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
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
