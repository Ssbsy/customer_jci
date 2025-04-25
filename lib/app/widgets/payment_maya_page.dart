import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/widgets/payment_done.dart';

class PaymentMayaPage extends StatefulWidget {
  final String productName;
  final double productPrice;

  const PaymentMayaPage({
    super.key,
    required this.productName,
    required this.productPrice,
  });

  @override
  State<PaymentMayaPage> createState() => _PaymentMayaPageState();
}

class _PaymentMayaPageState extends State<PaymentMayaPage> {
  int _currentScreen = 0; // 0 = QR, 1 = Review, 2 = Success

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _currentScreen == 0
              ? 'Maya'
              : _currentScreen == 1
              ? 'Review Payment'
              : 'Payment Successful',
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:
            _currentScreen == 0
                ? _buildQRPaymentScreen()
                : _currentScreen == 1
                ? _buildReviewScreen()
                : _buildSuccessScreen(),
      ),
    );
  }

  // QR Payment Screen
  Widget _buildQRPaymentScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Image.asset('assets/logo/maya_logo.png', height: 40),
        const SizedBox(height: 20),
        const Text(
          'Express Checkout',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'For an easy and fast payment',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo/maya_logo.png', height: 20),
              const SizedBox(width: 10),
            ],
          ),
        ),
        const SizedBox(height: 30),
        const Row(
          children: [
            Expanded(child: Divider()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Or pay with Maya QR',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            Expanded(child: Divider()),
          ],
        ),
        const SizedBox(height: 30),
        const Text(
          'Scan maya QR to Pay',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.green,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Use your Maya App to scan QR code',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              _currentScreen = 1;
            });
          },
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/images/qr_img.png', height: 200),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          'PHP${_formatPrice(widget.productPrice)}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          widget.productName,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }

  // Review Screen
  Widget _buildReviewScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Review purchase details',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          'You are about to pay, kindly confirm the details below.',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 30),
        _detailRow('Available balance', 'PHP 50,000.00'),
        const SizedBox(height: 15),
        _detailRow('You are buying', widget.productName),
        const SizedBox(height: 15),
        _detailRow('Amount due', 'PHP ${_formatPrice(widget.productPrice)}'),
        const Spacer(),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _currentScreen = 2;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade700,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Confirm to Pay',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                _currentScreen = 0;
              });
            },
            child: const Text(
              'Cancel and Return',
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
          ),
        ),
      ],
    );
  }

  // Success Screen
  Widget _buildSuccessScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Payment Successful',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Center(
          child: Text(
            'PHP ${_formatPrice(widget.productPrice)}',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 5),
        Center(
          child: Text(
            widget.productName,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'TRANSACTION DETAILS',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        _transactionDetailRow('Transaction ID', 'sqljncvsjkr347137dvs4'),
        _transactionDetailRow('Payment Date', '8 April 2025'),
        _transactionDetailRow('Payment Method', 'Maya'),
        const SizedBox(height: 20),
        const Divider(),
        const SizedBox(height: 20),
        const Text(
          'PAYMENT DETAILS',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        _transactionDetailRow(
          'Total Amount Paid',
          'PHP ${_formatPrice(widget.productPrice)}',
        ),
        const Divider(),
        const Spacer(),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => PaymentDonePage(
                        productName: widget.productName,
                        productPrice: _formatPrice(widget.productPrice),
                      ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade700,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Back to World Congress App',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _detailRow(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16)),
          Text(
            value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _transactionDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16, color: Colors.grey)),
          Text(
            value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  String _formatPrice(double price) {
    return price
        .toStringAsFixed(2)
        .replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
        );
  }
}
