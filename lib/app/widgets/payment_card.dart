import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/payment_done.dart';

class PaymentCardPage extends StatefulWidget {
  final String productName;
  final double productPrice;
  final String currencySymbol;

  const PaymentCardPage({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.currencySymbol, // e.g., "PHP", "USD"
  });

  @override
  PaymentCardPageState createState() => PaymentCardPageState();
}

class PaymentCardPageState extends State<PaymentCardPage> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            _buildMerchantInfo(),
            const SizedBox(height: 30),
            _buildAmount(),
            const SizedBox(height: 30),
            _buildCardSection(),
            const SizedBox(height: 20),
            _buildCardHolderName(),
            const SizedBox(height: 20),
            _buildExpiryAndCvvFields(),
            const SizedBox(height: 60),
            _buildPayNowButton(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildMerchantInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('08:00', style: TextStyle(fontSize: 16, color: Colors.grey)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'Merchant:',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Text(
              widget.productName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAmount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Amount',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 4),
        Text(
          '${widget.currencySymbol} ${_formatPrice(widget.productPrice)}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildCardSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'CARD',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 20),
        _buildCardNumberField(),
      ],
    );
  }

  Widget _buildCardNumberField() {
    return _buildTextFieldWithIcons(
      label: 'Card number',
      controller: _cardNumberController,
      hint: '4200 0000 0000 0000',
      icons:
          widget.currencySymbol == '\$'
              ? [
                'card_mastercard.png',
                'card_visa.png',
                'card_jcb.png',
                'card_dinersclub.png',
                'card_unionpay.png',
              ]
              : [
                'card_bdo.jpg',
                'card_bpi.jpg',
                'card_rcbc.png',
                'card_landbank.png',
              ],
    );
  }

  Widget _buildCardHolderName() {
    return _buildTextField(
      label: 'Card holder name',
      controller: _cardHolderController,
    );
  }

  Widget _buildExpiryAndCvvFields() {
    return Row(
      children: [
        Expanded(
          child: _buildTextField(
            label: 'Expiry date',
            controller: _expiryDateController,
            hint: 'MM / YY',
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: _buildTextField(
            label: 'CVV code',
            controller: _cvvController,
            hint: '999',
            obscureText: true,
          ),
        ),
      ],
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    String hint = '',
    bool obscureText = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            TextFormField(
              controller: controller,
              obscureText: obscureText,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldWithIcons({
    required String label,
    required TextEditingController controller,
    required String hint,
    required List<String> icons,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Row(
                  children:
                      icons
                          .map(
                            (icon) => Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Image.asset(
                                'assets/logo/$icon',
                                height: 15,
                              ),
                            ),
                          )
                          .toList(),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              style: const TextStyle(
                fontSize: 16,
                letterSpacing: 1.5,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPayNowButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => PaymentDonePage(
                    productName: widget.productName,
                    productPrice:
                        '${widget.currencySymbol} ${_formatPrice(widget.productPrice)}',
                  ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.alertRed,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: const Text(
          'Pay Now',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
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

  @override
  void dispose() {
    _cardNumberController.dispose();
    _cardHolderController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();
    super.dispose();
  }
}
