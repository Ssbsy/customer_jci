import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:jci_worldcon_customer/core/utils/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [const HeaderWidget(), const Shop(), const FooterWidget()],
        ),
      ),
      endDrawer: const EndDrawerWidget(),
    );
  }
}
