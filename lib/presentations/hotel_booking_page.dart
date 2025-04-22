import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_app_bar.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/core/models/hotel.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/constants/texts.dart';
import 'package:jci_worldcon_customer/core/utils/hotel_booking_available_room.dart';
import 'package:jci_worldcon_customer/core/utils/hotel_booking_contacts.dart';
import 'package:jci_worldcon_customer/core/utils/hotel_booking_hotel_rooms.dart';
import 'package:jci_worldcon_customer/core/utils/hotel_bookings_callOrbook_buttons.dart';
import 'package:jci_worldcon_customer/core/utils/hotel_details.dart';
import 'package:jci_worldcon_customer/core/utils/hotels.dart';
import 'package:jci_worldcon_customer/app/widgets/review_stars.dart';
import 'package:readmore/readmore.dart';

class HotelBookingPage extends StatelessWidget {
  final Hotel hotel;
  const HotelBookingPage({super.key, required this.hotel});

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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 35,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: hotel.hotelName,
                    fontSize: 25,
                    textColor: AppColors.darkBluishGray,
                  ),
                  const ReviewStars(size: 25),
                  const Gap(20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Assets.shareLocationIcon,
                      Expanded(
                        child: CustomText(
                          richText: TextSpan(
                            text: Texts.hiltonClarkSunValleyDescription,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            children: [
                              TextSpan(
                                text:
                                    '                                                  - see on map',
                                style: TextStyle(color: AppColors.mediumBlue),
                              ),
                            ],
                          ),
                          maxLines: 5,
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  const HotelBookingContacts(),
                  const Gap(15),
                  const HotelBookingsCallorbookButtons(),
                  const Gap(15),
                  hotel.hotelImage,
                  const Gap(15),
                  ReadMoreText(
                    Texts.hotelBookingDescription,
                    trimLines: 2,
                    colorClickableText: AppColors.mediumBlue,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    style: TextStyle(color: AppColors.black),
                    moreStyle: TextStyle(
                      color: AppColors.mediumBlue,
                      fontWeight: FontWeight.bold,
                    ),
                    lessStyle: TextStyle(
                      color: AppColors.mutedBluishGray,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(15),
                  const HotelDetails(),
                  const Gap(25),
                  Assets.mapView,
                  const Gap(20),
                  const HotelBookingAvailableRoom(),
                  const Gap(20),
                  HotelBookingHotelRooms(hotel: hotel),
                  const Gap(20),
                  CustomText(title: 'We offer you'),
                  Hotels(isInsideHotelPage: true, excludeHotel: hotel),
                ],
              ),
            ),
            const FooterWidget(),
          ],
        ),
      ),
      endDrawer: const EndDrawerWidget(),
    );
  }
}
