import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/models/resto.dart';
import 'package:jci_worldcon_customer/core/utils/navigation/resto_page_content.dart';

class RestoPage extends StatefulWidget {
  const RestoPage({super.key});

  @override
  State<RestoPage> createState() => _RestoPageState();
}

class _RestoPageState extends State<RestoPage> {
  final resto = [
    Resto(
      name: 'Pampanga, Philippines',
      location: 'Clark Freeport Zone',
      img: Assets.restoPageContent01,
    ),
    Resto(
      name: 'Goji Kitchen + Bar',
      location: 'Clark Freeport Zone',
      img: Assets.restoPageContent01,
    ),
    Resto(
      name: 'Pampanga, Philippines',
      location: 'Rare Bar & Grill Clark',
      img: Assets.restoPageContent01,
    ),
    Resto(
      name: 'Goji Kitchen + Bar',
      location: 'Smoki Moto',
      img: Assets.restoPageContent01,
    ),
    Resto(
      name: 'Pampanga, Philippines',
      location: 'Wu Xing',
      img: Assets.restoPageContent01,
    ),
    Resto(
      name: 'Goji Kitchen + Bar',
      location: 'Markt At Swissotel Clark',
      img: Assets.restoPageContent01,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ...resto.map(
                  (restoItem) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: RestoPageContent(resto: restoItem),
                  ),
                ),
              ],
            ),
          ),
          const FooterWidget(),
        ],
      ),
    );
  }
}
