import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(title: 'Internet', fontSize: 16),
            _row(
              Icon(Icons.wifi, color: AppColors.mediumGreen, size: 17),
              'Wifi',
            ),

            const Gap(100),
            CustomText(title: 'Language Spoken', fontSize: 16),
            _row(Icon(Icons.settings, size: 16), 'English'),
            _row(Icon(Icons.settings, size: 16), 'Korean'),
            _row(Icon(Icons.settings, size: 16), 'German'),

            const Gap(20),
            CustomText(title: 'Bathroom', fontSize: 16),
            _row(Icon(Icons.settings, size: 16), 'Bathroom'),
            _row(Icon(Icons.settings, size: 16), 'Hot and Cold water'),

            const Gap(5),
            CustomText(title: 'Tranportation', fontSize: 16),
            _row(Icon(Icons.settings, size: 16), 'Pick-Up Service'),
          ],
        ),
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(title: 'Laundry Service', fontSize: 16),
            _row(Icon(Icons.recycling, size: 16), 'Dry Cleaning'),
            _row(Icon(Icons.menu, size: 16), 'Ironing Service'),
            _row(Icon(Icons.water_drop, size: 16), 'Laundry Service'),
            _row(Icon(Icons.repeat, size: 16), 'Daily cleaning'),

            const Gap(20),

            CustomText(title: 'Public Area', fontSize: 16),
            _row(Icon(Icons.settings, size: 16), 'Elevator'),
            _row(Icon(Icons.settings, size: 16), '25/7 reception'),
            _row(Icon(Icons.settings, size: 16), 'ATM'),

            const Gap(20),
            CustomText(title: 'Activites', fontSize: 16),
            _row(Icon(Icons.settings, size: 16), 'Car Parking'),

            const Gap(35),
            CustomText(title: 'Service Center', fontSize: 16),
            _row(Icon(Icons.settings, size: 16), 'Souvenir shop'),
          ],
        ),
      ],
    );
  }

  Row _row(Icon icon, String title) {
    return Row(
      spacing: 5,
      children: [icon, CustomText(title: title, fontSize: 14)],
    );
  }
}
