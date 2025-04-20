import 'package:flutter/material.dart';

class ReviewStars extends StatelessWidget {
  final double size;
  const ReviewStars({super.key, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Icon(Icons.star, color: Colors.amber, size: size),
      ),
    );
  }
}
