import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/payment_done.dart';

class PaymentCardPHPPage extends StatefulWidget {
  final String productName;
  final double productPrice; 

  const PaymentCardPHPPage({
    super.key,
    required this.productName,
    required this.productPrice,
  });

  @override
  PaymentCardPHPPageState createState() => PaymentCardPHPPageState();
}

class PaymentCardPHPPageState extends State<PaymentCardPHPPage> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Details'),
        backgroundColor: AppColors.darkBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Product name and price
              Text(
                widget.productName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlue,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '₱${widget.productPrice.toStringAsFixed(2)}', // ✅ Formatted as PHP currency
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.mutedPurple,
                ),
              ),
              const SizedBox(height: 32),

              // Card number field
              TextFormField(
                controller: _cardNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Card Number*',
                  hintText: '4200 0000 0000 0000',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Card holder name field
              TextFormField(
                controller: _cardHolderController,
                decoration: const InputDecoration(
                  labelText: 'Card Holder Name*',
                  hintText: 'Card holder name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Expiry date field
              TextFormField(
                controller: _expiryDateController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Expiry Date*',
                  hintText: 'MM / YY',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // CVV field
              TextFormField(
                controller: _cvvController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'CVV Code*',
                  hintText: '999',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 32),

              // Pay Now button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Optional: Add your payment validation logic here

                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentDonePage(
                          productName: widget.productName,
                          productPrice: widget.productPrice.toString(),
                        ),
                      ),
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
                      'Pay Now',
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
    );
  }
}
