import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/core/models/hotel.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/app/widgets/review_stars.dart';
import 'package:jci_worldcon_customer/presentations/hotel_booking_page.dart';

class Hotels extends StatelessWidget {
  final bool isInsideHotelPage;
  final Hotel? excludeHotel;
  Hotels({super.key, this.isInsideHotelPage = false, this.excludeHotel});

  final List<Hotel> hotels = [
    Hotel(
      hotelImage: Assets.hotel01,
      location: 'Pampanga, Philippines',
      hotelName: 'Hilton Clark Sun Valley',
      price: 2218.52,
    ),
    Hotel(
      hotelImage: Assets.hotel02,
      location: 'Pampanga, Philippines',
      hotelName: 'Swissôtel Clark',
      price: 139.42,
    ),
    Hotel(
      hotelImage: Assets.hotel03,
      location: 'Pampanga, Philippines',
      hotelName: 'Clark Marriott Hotel',
      price: 139.42,
    ),
    Hotel(
      hotelImage: Assets.hotel04,
      location: 'Pampanga, Philippines',
      hotelName: 'Royce Hotel and Casino',
      price: 118.15,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        hotels.length,
        (index) => _buildHotelCard(context, hotels[index]),
      ),
    );
  }

  Widget _buildHotelCard(BuildContext context, Hotel hotel) {
    if (excludeHotel != null && hotel.hotelName == excludeHotel!.hotelName) {
      return const SizedBox.shrink();
    }

    return GestureDetector(
      onTap: () {
        if (!isInsideHotelPage) {
          Get.to(() => HotelBookingPage(hotel: hotel));
        }
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          // boxShadow: const [
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 6,
          //     offset: Offset(0, 3),
          //   ),
          // ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hotel.hotelImage,
            const Gap(10),
            CustomText(title: hotel.location, fontSize: 17),
            CustomText(
              title: hotel.hotelName,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            CustomText(
              title: '${hotel.price.toStringAsFixed(2)} USD',
              fontSize: 17,
            ),
            const Gap(10),
            const ReviewStars(),
          ],
        ),
      ),
    );
  }
}
