import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/presentations/product_page.dart';
import 'package:jci_worldcon_customer/core/utils/product_variants.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _card(
          context,
          'assets/images/white_hoodie.png',
          'Hoodie',
          'Available: 150',
          hoodieVariants,
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => ProductPage(
                      productName: 'Hoodie',
                      productPrice: 300.00,
                      availableStock: 150,
                      productVariants: hoodieVariants,
                    ),
              ),
            );
          },
        ),
        const Gap(15),
        _card(
          context,
          'assets/images/tumbler_01.png',
          'Tumbler',
          'Available: 76',
          tumblerVariants,
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => ProductPage(
                      productName: 'Tumbler',
                      productPrice: 100.00,
                      availableStock: 76,
                      productVariants: tumblerVariants,
                    ),
              ),
            );
          },
        ),
        const Gap(15),
        _card(
          context,
          'assets/images/umbrella_01.png',
          'Umbrella',
          'Available: 45',
          umbrellaVariants,
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => ProductPage(
                      productName: 'Umbrella',
                      productPrice: 80.00,
                      availableStock: 45,
                      productVariants: umbrellaVariants,
                    ),
              ),
            );
          },
        ),
        const Gap(15),
        _card(
          context,
          'assets/images/planner.png',
          'Planner',
          'Available: 90',
          plannerVariants,
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => ProductPage(
                      productName: 'Planner',
                      productPrice: 50.00,
                      availableStock: 90,
                      productVariants: plannerVariants,
                    ),
              ),
            );
          },
        ),
      ],
    );
  }

  Card _card(
    BuildContext context,
    String image,
    String title,
    String subTitle,
    List<Map<String, dynamic>> variants,
    VoidCallback onTap,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              image,
              height: 200,
              fit: BoxFit.cover,
            ), // Reduce height if needed
            if (variants.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      variants.map((variant) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            color: variant['color'],
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black12),
                          ),
                        );
                      }).toList(),
                ),
              ),
            const Gap(10),
            _row(title, const Color(0xFF252B42)),
            _row(subTitle, Colors.deepOrange),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
              child: CustomButton(
                text: 'Buy Now',
                onTap: onTap,
                containerColor: AppColors.alertRed,
                textColor: AppColors.white,
                borderColor: AppColors.alertRed,
                borderRadius: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _row(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          CustomText(
            title: title,
            fontWeight: FontWeight.bold,
            textColor: color,
          ),
        ],
      ),
    );
  }
}
