import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/review_stars.dart';
import 'package:jci_worldcon_customer/core/models/resto.dart';

class RestoPageContent extends StatelessWidget {
  final Resto resto;
  const RestoPageContent({super.key, required this.resto});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            resto.img,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(title: resto.name, fontWeight: FontWeight.w300),
                  CustomText(
                    title: resto.location,
                    fontWeight: FontWeight.bold,
                  ),
                  ReviewStars(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
