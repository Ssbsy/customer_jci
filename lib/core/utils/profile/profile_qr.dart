import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ProfileQr extends StatelessWidget {
  final Widget? optionalCard;

  const ProfileQr({super.key, this.optionalCard});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(title: 'Smith'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(title: '@John'),
                      const Icon(Icons.verified, color: Colors.blue),
                    ],
                  ),
                  const Gap(10),
                  QrImageView(
                    data: '1234567890',
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                  if (optionalCard != null) ...[const Gap(20), optionalCard!],
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Image.asset(
            'assets/icons/profile_pic.png',
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}
