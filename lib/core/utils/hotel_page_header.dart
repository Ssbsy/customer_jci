import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class HotelPageHeader extends StatelessWidget {
  const HotelPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [Assets.ihotelLogoBlue, Assets.jciWorldConLogo]),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Assets.phLogo, EndDrawerButton()],
          ),
        ],
      ),
    );
  }
}
