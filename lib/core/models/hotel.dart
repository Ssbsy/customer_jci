import 'package:flutter/widgets.dart';

class Hotel {
  final Widget hotelImage;
  final String location;
  final String hotelName;
  final double price;

  const Hotel({
    required this.hotelImage,
    required this.location,
    required this.hotelName,
    required this.price,
  });
}
