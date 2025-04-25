import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class HotelBookingContacts extends StatelessWidget {
  const HotelBookingContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Row(
        spacing: 15,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildContactColumn([
            (Assets.phoneLogo, 'Show phone number'),
            (Assets.messageLogo, 'info@ihotel.mn'),
          ]),
          buildContactColumn([
            (Assets.whatsAppLogo, 'Whatsapp'),
            (Assets.phoneLogo, 'Viber'),
          ]),
        ],
      ),
    );
  }

  Column buildContactColumn(List<(Image, String)> contacts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          contacts
              .map(
                (contact) => Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: _row(contact.$1, contact.$2),
                ),
              )
              .toList(),
    );
  }

  Row _row(Image logo, String title) {
    return Row(
      spacing: 10,
      children: [
        logo,
        CustomText(title: title, textColor: AppColors.mediumBlue, fontSize: 12),
      ],
    );
  }
}
