import 'package:customer_jci/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EndDrawerWidget extends StatelessWidget {
  const EndDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: <Widget>[
          Image.asset('assets/logo-login 1.png', fit: BoxFit.cover),
          const Gap(25),
          _action('Home'),
          _action('Profile'),
          _action('Buy tickets'),
          _action('Link tickets'),
          _action('Hotel'),
          _action('Map'),
          _action('Shop'),
          _action('FAQ'),
          _action('COC Team'),
          _action(
            'Sign Out',
            color: Colors.deepOrange.shade700,
            textColor: Colors.white,
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
