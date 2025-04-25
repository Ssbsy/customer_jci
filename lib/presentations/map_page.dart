import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text_field.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/utils/map_bus_schedule.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            const HeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            title: 'Bus Schedule',
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          const MapBusSchedule(),
                          const Gap(20),
                          CustomText(
                            title: 'Bus Location',
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          CustomTextField(
                            controller: _controller,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            enabledBorderRadius: 22,
                            enabledBorderSide: 1.5,
                            focusedBorderRadius: 22,
                            focusedBorderSide: 1.5,
                            hintText: 'Search Station',
                            suffixIcon: Icon(Icons.search),
                          ),
                          const Gap(20),
                          _arrivingIn2Minutes(),
                          const Gap(50),
                          CustomText(
                            title: 'Bus Route',
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          const Gap(15),
                          _mapPhoto(),
                          const Gap(15),
                        ],
                      ),
                    ),
                    const FooterWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
        endDrawer: const EndDrawerWidget(),
      ),
    );
  }

  Row _mapPhoto() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Assets.mapPagePhoto],
    );
  }

  Row _arrivingIn2Minutes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          elevation: 4,
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              spacing: 15,
              children: [
                Assets.mapArrivingIcon,
                CustomText(title: 'Arriving in 2 minutes', fontSize: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
