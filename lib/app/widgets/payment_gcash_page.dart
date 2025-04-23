import 'package:flutter/material.dart';
import 'payment_done.dart'; // Import the new page

class PaymentGCashPage extends StatefulWidget {
  final String productName;
  final double productPrice;

  const PaymentGCashPage({
    super.key,
    required this.productName,
    required this.productPrice,
  });

  @override
  _PaymentGCashPageState createState() => _PaymentGCashPageState();
}

class _PaymentGCashPageState extends State<PaymentGCashPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final blueColor = const Color(0xFF0065FF);

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: size.height / 3,
                width: double.infinity,
                child: ColoredBox(color: blueColor),
              ),
              const Expanded(child: ColoredBox(color: Colors.white)),
            ],
          ),
          Positioned(
            top: size.height / 3 - 80,
            left: 24,
            right: 24,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(16),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (currentPage == 0) ...[
                      _buildLabelRow('Merchandise', widget.productName),
                      const SizedBox(height: 16),
                      _buildLabelRow(
                        'Amount Due',
                        'PHP ${widget.productPrice.toStringAsFixed(2)}',
                        valueColor: blueColor,
                        bold: true,
                        fontSize: 16,
                      ),
                      const SizedBox(height: 24),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login to pay with GCash',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Mobile Number',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: '+639 915 309 853',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentPage = 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blueColor,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'NEXT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ] else if (currentPage == 1) ...[
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Enter the 6-digit authentication code sent to your registered mobile number',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      const SizedBox(height: 16),
                      PinInput(digits: 6),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Text(
                            'Didn\'t get the code?',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {
                              // Resend logic
                            },
                            child: const Text(
                              'Resend Code',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentPage = 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blueColor,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'NEXT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ] else if (currentPage == 2) ...[
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Enter your 4-digit MPIN',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      const SizedBox(height: 16),
                      PinInput(digits: 4),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentPage = 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blueColor,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'NEXT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ] else if (currentPage == 3) ...[
                      _buildLabelRow('Payment Successful', ''),
                      const SizedBox(height: 16),
                      _buildLabelRow(
                        'Total Amount',
                        'PHP ${widget.productPrice.toStringAsFixed(2)}',
                        valueColor: blueColor,
                        bold: true,
                        fontSize: 16,
                      ),
                      const SizedBox(height: 16),
                      _buildLabelRow(
                        'Product',
                        widget.productName,
                        valueColor: blueColor,
                        bold: true,
                        fontSize: 16,
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => PaymentDonePage(
                                      productName: widget.productName,
                                      productPrice: widget.productPrice
                                          .toStringAsFixed(2),
                                    ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blueColor,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Back to World Congress app',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_balance_wallet,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'GCash',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLabelRow(
    String label,
    String value, {
    Color valueColor = Colors.black,
    bool bold = false,
    double fontSize = 14,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
        Text(
          value,
          style: TextStyle(
            color: valueColor,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}

class PinInput extends StatelessWidget {
  final int digits;

  const PinInput({Key? key, required this.digits}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(digits, (index) {
        return Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Center(
            child: TextField(
              keyboardType: TextInputType.number,
              maxLength: 1,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                counterText: '',
                border: UnderlineInputBorder(),
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        );
      }),
    );
  }
}
