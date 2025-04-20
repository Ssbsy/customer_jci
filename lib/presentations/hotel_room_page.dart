import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_app_bar.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/core/blueprints/hotel.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/constants/texts.dart';
import 'package:jci_worldcon_customer/core/utils/hotel_room_book_now.dart';

class HotelRoomPage extends StatelessWidget {
  final Hotel hotel;
  final Widget image;
  final String hotelName;
  const HotelRoomPage({
    super.key,
    required this.hotel,
    required this.image,
    required this.hotelName,
  });

  //Repeatable mangagaling sa API - wag gayahin
  //Mangagaling sa API wag na gayahin
  //Pag repeatable, gawin ng listview tas isang sample lang
  //QR library sa flutter - pub dev - QR Image view plugin
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Assets.ihotelLogoWhite,
        isAutomaticallyImplyLeading: true,
        isCenterTitle: false,
        backgroundColor: AppColors.mutedBluishGray,
        foregroundColor: AppColors.white,
        actionWidgets: [EndDrawerButton()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _headerDate(),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  image,
                  const Gap(10),
                  CustomText(
                    title: hotelName,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: Texts.hotelRoomDescription,
                          maxLines: 10,
                          isJustified: true,
                          fontSize: 14,
                        ),

                        const Gap(10),

                        CustomText(title: 'In your private bathroom: '),

                        _row("Free toiletries"),
                        _row("Shower"),
                        _row("Bathrobe"),
                        _row("Toilet"),
                        _row("Slippers"),
                        _row("Hairdryer"),

                        CustomText(title: 'Facilities:'),

                        _row("Desk"),
                        _row("TV"),
                        _row("Minibar"),
                        _row("Safety deposit box"),
                        _row("Flat-screen TV"),
                        _row("Alarm Clock"),
                        _row("Telephone"),
                        _row("Internet facilities"),
                        _row("Ironing facilities"),
                        _row("Radio"),
                        _row("Seating Area"),
                        _row("Interconnected room(s) available"),
                        _row("Air conditioning"),
                        _row("Tea/Coffee maker"),

                        CustomText(title: 'Smoking:'),
                        CustomText(title: 'No smoking'),

                        const Gap(30),

                        HotelRoomBookNow(),

                        const Gap(20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }

  Row _row(String title) {
    return Row(
      spacing: 10,
      children: [
        Icon(
          Icons.check_rounded,
          color: AppColors.darkGray,
          size: 25,
          weight: 20,
        ),
        CustomText(title: title),
      ],
    );
  }

  Container _headerDate() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(width: 0.7, color: AppColors.mutedPurple),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.mutedPurple),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          spacing: 10,
          children: [
            Icon(Icons.calendar_month, size: 20),
            CustomText(title: '6/09/2025 - 6/17/2025'),
          ],
        ),
      ),
    );
  }
}
