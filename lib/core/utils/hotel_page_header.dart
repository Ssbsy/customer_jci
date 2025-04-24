import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class HotelPageHeader extends StatelessWidget implements PreferredSizeWidget {
  const HotelPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [Assets.ihotelLogoBlue, Assets.jciWorldConLogo]),
          Assets.phLogo,
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
