import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/core/blueprints/hotel.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/utils/review_stars.dart';
import 'package:jci_worldcon_customer/presentations/hotel_booking_page.dart';

class Hotels extends StatelessWidget {
  Hotels({super.key});

  final List<Hotel> hotels = [
    Hotel(
      hotelImage: Assets.hotelO1,
      location: 'Pampanga, Philippines',
      hotelName: 'Hilton Clark Sun Valley',
      price: 2218.52,
    ),
    Hotel(
      hotelImage: Assets.hotelO1,
      location: 'Pampanga, Philippines',
      hotelName: 'Swissôtel Clark',
      price: 1890.75,
    ),
    Hotel(
      hotelImage: Assets.hotelO1,
      location: 'Pampanga, Philippines',
      hotelName: 'Clark Marriott Hotel',
      price: 1450.00,
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
    return GestureDetector(
      onTap: () => Get.to(() => HotelBookingPage(hotel: hotel)),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hotel.hotelImage,
            const SizedBox(height: 10),
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
            const SizedBox(height: 5),
            const ReviewStars(),
          ],
        ),
      ),
    );
  }
}
