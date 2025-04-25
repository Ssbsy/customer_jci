import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/presentations/shop_page.dart';

class PaymentDonePage extends StatefulWidget {
  final String productName;
  final String productPrice;

  const PaymentDonePage({
    super.key,
    required this.productName,
    required this.productPrice,
  });

  @override
  _PaymentDonePageState createState() => _PaymentDonePageState();
}

class _PaymentDonePageState extends State<PaymentDonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const EndDrawerWidget(),
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 32.0,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.alertRed,
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: const Icon(
                        Icons.check,
                        color: AppColors.white,
                        size: 40.0,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Thank you',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkBlue,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Your payment has been\nsuccessfully processed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.mutedPurple,
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Divider(color: AppColors.coolGray),
                    const SizedBox(height: 16),
                    const Text(
                      'ITEM',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.mutedPurple,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.productName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkBlue,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'TOTAL AMOUNT',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.mutedPurple,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.productPrice,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkBlue,
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to the shop page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShopPage(),
                            ), // Replace 'ShopPage' with the actual shop page widget
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.alertRed,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Buy again',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
