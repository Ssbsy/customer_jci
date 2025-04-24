import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/widgets/payment_done.dart';

void main() {
  runApp(MaterialApp(
    home: PaymentMayaPage(productName: 'World Congress Regular Ticket', productPrice: 32078.47),
  ));
}

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
  bool _showReview = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_showReview ? 'Maya Payment Review' : 'Maya Payment'),
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: _showReview ? _buildReviewUI() : _buildQRCodeUI(),
      ),
    );
  }

  Widget _buildQRCodeUI() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        const Text(
          'Express Checkout',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Optional: Trigger express checkout
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade700,
          ),
          child: const Text('maya'),
        ),
        const SizedBox(height: 20),
        const Divider(),
        const Text(
          'Or pay with Maya QR',
          style: TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 10),
        const Text(
          'Scan maya QR to Pay',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green),
        ),
        const Text('Use your Maya App to scan QR code'),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              _showReview = true;
            });
          },
          child: Center(
            child: Image.asset(
              'assets/images/qr_img.png',
              height: 200,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'PHP ${widget.productPrice.toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          widget.productName,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildReviewUI() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Review purchase details',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        _detailRow('Available balance', 'PHP 50,000.00'),
        const SizedBox(height: 10),
        _detailRow('You are buying', widget.productName),
        const SizedBox(height: 10),
        _detailRow('Amount due', 'PHP ${widget.productPrice.toStringAsFixed(2)}'),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: () {
            // Simulate payment confirmation process
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Payment confirmed!')),
            );

            // Navigate to PaymentSuccessPage and pass the product name and price
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentSuccessPage(
                  productName: widget.productName,
                  productPrice: widget.productPrice,
                ),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade700,
            minimumSize: const Size.fromHeight(45),
          ),
          child: const Text('Confirm to Pay'),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            setState(() {
              _showReview = false;
            });
          },
          child: const Text('Cancel and Return'),
        ),
      ],
    );
  }

  Widget _detailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontSize: 16)),
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      ],
    );
  }
}

class PaymentSuccessPage extends StatelessWidget {
  final String productName;
  final double productPrice;

  const PaymentSuccessPage({
    super.key,
    required this.productName,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Successful'),
        backgroundColor: Colors.green.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Payment Successful',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            const Text(
              'TRANSACTION DETAILS',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _detailRow('Transaction ID', 'sdjncvsjkr347137dvs4'),
            const SizedBox(height: 10),
            _detailRow('Payment Date', '8 April 2025'),
            const SizedBox(height: 10),
            _detailRow('Payment Method', 'Maya'),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 20),
            _detailRow('Amount', '₱ ${productPrice.toStringAsFixed(2)}'),
            const SizedBox(height: 10),
            _detailRow('Total Paid', 'PHP ${productPrice.toStringAsFixed(2)}'),
            const SizedBox(height: 10),
            _detailRow('Product', productName),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 20),
            _detailRow('Total Amount Paid', 'PHP ${productPrice.toStringAsFixed(2)}'),

            // New Button
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate to another page (Payment Done Page or anywhere else)
               Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentDonePage(
                  productName: productName,  // Pass the product name
                  productPrice: productPrice.toStringAsFixed(2),  // Pass the product price as a String
                ),
              ),
            );

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
                minimumSize: const Size.fromHeight(45),
              ),
              child: const Text('Back to World Congress App', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontSize: 16)),
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      ],
    );
  }
}


