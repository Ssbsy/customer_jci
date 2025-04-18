import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/product_widget.dart';

class ProductPage extends StatelessWidget {
  final String productName;
  final double productPrice;
  final int availableStock;
  final List<Map<String, dynamic>> productVariants;

  const ProductPage({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.availableStock,
    required this.productVariants,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const EndDrawerWidget(),
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  ProductWidget(
                    name: productName,
                    price: productPrice,
                    available: availableStock,
                    variants: productVariants,
                  ),
                  SizedBox(height: 40),
                  FooterWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
