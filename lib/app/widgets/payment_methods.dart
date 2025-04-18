import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: Text(
            'Payment methods',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        _singleLogoBox(
          'assets/logo/gcash_logo.png',
          alignment: MainAxisAlignment.start,
        ),
        _singleLogoBox(
          'assets/logo/maya_logo.png',
          alignment: MainAxisAlignment.start,
        ),
        _cardPaymentBox(
          label: 'Pay with card (PHP)',
          logos: [
            'assets/logo/card_bdo.jpg',
            'assets/logo/card_bpi.jpg',
            'assets/logo/card_rcbc.png',
            'assets/logo/card_landbank.png',
          ],
        ),
        _cardPaymentBox(
          label: 'Pay with card (USD)',
          logos: [
            'assets/logo/card_mastercard.png',
            'assets/logo/card_visa.png',
            'assets/logo/card_jcb.png',
            'assets/logo/card_dinersclub.png',
            'assets/logo/card_unionpay.png',
          ],
        ),
      ],
    );
  }

  Widget _singleLogoBox(
    String logoPath, {
    MainAxisAlignment alignment = MainAxisAlignment.center,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: alignment,
          children: [
            Image.asset(
              logoPath,
              height: 24,
              fit: BoxFit.contain,
              errorBuilder:
                  (context, error, stackTrace) =>
                      const Icon(Icons.error, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardPaymentBox({required String label, required List<String> logos}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children:
                  logos
                      .map(
                        (logoPath) => Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Image.asset(
                            logoPath,
                            height: 24,
                            width: 30,
                            fit: BoxFit.contain,
                            errorBuilder:
                                (context, error, stackTrace) =>
                                    const Icon(Icons.error, color: Colors.red),
                          ),
                        ),
                      )
                      .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
