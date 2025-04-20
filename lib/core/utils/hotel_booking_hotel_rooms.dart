import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/core/blueprints/hotel.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/presentations/hotel_room_page.dart';

class HotelBookingHotelRooms extends StatelessWidget {
  final Hotel hotel;
  const HotelBookingHotelRooms({super.key, required this.hotel});

  //ListView dapat - item count - clickable listview
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        _rooms(
          Assets.twinGuestRoomPoolView,
          "Twin Guest Room Pool View",
          onTap:
              () => Get.to(
                () => HotelRoomPage(
                  hotel: hotel,
                  image: Assets.twinGuestRoomPoolView,
                  hotelName: "Twin Guest Room Pool View",
                ),
              ),
        ),
        _rooms(
          Assets.kingOneBedroomSuiteWithBalcony,
          "King One Bedroom Suite with Balcony",
          onTap:
              () => Get.to(
                () => HotelRoomPage(
                  hotel: hotel,
                  image: Assets.kingOneBedroomSuiteWithBalcony,
                  hotelName: "King One Bedroom Suite with Balcony",
                ),
              ),
        ),
        _rooms(
          Assets.kingTwoBedroomGovernorSuite,
          "King Two Bedroom Governor Suite",
          onTap:
              () => Get.to(
                () => HotelRoomPage(
                  hotel: hotel,
                  image: Assets.kingTwoBedroomGovernorSuite,
                  hotelName: "King Two Bedroom Governor Suite",
                ),
              ),
        ),
        _rooms(
          Assets.twinGuestRoomPoolView,
          "King Guest Room Pool View",
          roomsAvailable: 0,
          onTap:
              () => Get.to(
                () => HotelRoomPage(
                  hotel: hotel,
                  image: Assets.twinGuestRoomPoolView,
                  hotelName: "King Guest Room Pool View",
                ),
              ),
        ),
        _rooms(
          Assets.twinGuestRoomPoolView,
          "King One Bedroom Suite",
          onTap:
              () => Get.to(
                () => HotelRoomPage(
                  hotel: hotel,
                  image: Assets.twinGuestRoomPoolView,
                  hotelName: "King One Bedroom Suite",
                ),
              ),
        ),
      ],
    );
  }

  GestureDetector _rooms(
    Widget image,
    String hotelName, {
    int roomsAvailable = 15,
    void Function()? onTap,
  }) {
    final bool isSoldOut = roomsAvailable == 0;

    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                border: const Border(
                  left: BorderSide(width: 1, color: AppColors.darkGray),
                  right: BorderSide(width: 1, color: AppColors.darkGray),
                  bottom: BorderSide(width: 1, color: AppColors.darkGray),
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: hotelName,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            title: "View Room Details",
                            fontSize: 12,
                            underline: true,
                            textColor: AppColors.darkBluishGray,
                          ),
                          if (!isSoldOut)
                            CustomText(
                              title: '$roomsAvailable Rooms Available',
                              fontSize: 12,
                              maxLines: 2,
                              underline: true,
                              textColor: AppColors.mediumBlue,
                              fontWeight: FontWeight.bold,
                            ),
                        ],
                      ),
                    ],
                  ),
                  if (isSoldOut)
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 20),
                      child: Column(
                        children: [
                          CustomText(
                            title: 'Sold Out',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            title:
                                'This room is not available on your selected dates',
                            fontSize: 12,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
