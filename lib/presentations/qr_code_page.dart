import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_floating_action_bar.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:jci_worldcon_customer/core/utils/profile/profile_qr.dart';

class QrCodePage extends StatelessWidget {
  final Widget? optionalCard;
  const QrCodePage({super.key, this.optionalCard});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 5,
                    ),
                    child: Stack(
                      children: [
                        ProfileQr(
                          optionalCard: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _card('Scan QR'),
                              _card('Upload QR', icon: Icon(Icons.upload)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                ],
              ),
            ),
          ),
        ],
      ),
      endDrawer: const EndDrawerWidget(),
      floatingActionButton: CustomFloatingActionBar(),
    );
  }

  Card _card(String title, {Icon? icon}) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [icon ?? Icon(Icons.add), CustomText(title: title)],
        ),
      ),
    );
  }
}
