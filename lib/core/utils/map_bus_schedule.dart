import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class MapBusSchedule extends StatelessWidget {
  const MapBusSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _row(
                'To Airport',
                '10:30 AM',
                decoration1: const BoxDecoration(
                  border: Border(right: BorderSide(width: 1)),
                ),
                decoration2: const BoxDecoration(
                  border: Border.fromBorderSide(BorderSide.none),
                ),
              ),
              _row(
                'To Airport',
                '10:30 AM',
                decoration1: const BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 1),
                    top: BorderSide(width: 1),
                  ),
                ),
                decoration2: const BoxDecoration(
                  border: Border(top: BorderSide(width: 1)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row _row(
    String title,
    String title2, {
    BoxDecoration? decoration1,
    BoxDecoration? decoration2,
  }) {
    return Row(
      children: [
        _container(
          title,
          decoration:
              decoration1 ??
              const BoxDecoration(
                border: Border.fromBorderSide(BorderSide.none),
              ),
        ),
        _container(
          title2,
          decoration:
              decoration2 ??
              const BoxDecoration(
                border: Border.fromBorderSide(BorderSide.none),
              ),
        ),
      ],
    );
  }

  Container _container(
    String title, {
    EdgeInsets? padding,
    BoxDecoration? decoration,
  }) {
    return Container(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration:
          decoration ??
          const BoxDecoration(border: Border(right: BorderSide(width: 1))),
      child: CustomText(title: title, fontSize: 20),
    );
  }
}
