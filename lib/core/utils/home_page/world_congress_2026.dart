import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/core/constants/texts.dart';

class WorldCongress2026 extends StatelessWidget {
  const WorldCongress2026({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          CustomText(
            title: 'World Congress 2026',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          const Gap(20),

          CustomText(
            title: Texts.worldCongress2026Description,
            isJustified: true,
            maxLines: 10,
            fontWeight: FontWeight.w300,
          ),

          const Gap(25),

          _card(
            title: 'Innovation and Business',
            asset: "assets/logo/innovation_and_Business_logo_png.png",
            points: [
              "Global platform for entrepreneurs and business leaders",
              "Exploration of new ventures and strategic partnerships",
              "Cutting-edge digital solutions and technological advancements",
            ],
          ),

          const Gap(15),

          _card(
            title: 'Cultural & Networking Experiences',
            titleSize: 11.5,
            asset: "assets/logo/cultural_and_networking_Experiences_logo.png",
            points: [
              "“Tokyo Drift” themed Japan Night",
              "Supercar showcase and street party with DJ",
              "Global Village program featuring Nayong Pilipino and international booths",
            ],
          ),

          const Gap(15),

          _card(
            title: 'Green & Sustainable Solutions',
            asset: "assets/logo/green_and_sustainable_solutions_logo.png",
            points: [
              "Sustainable tourism and eco-friendly initiatives",
              "Government-backed infrastructure and green spaces",
              "Seamless transportation with Clark Loop & free delegate shuttles",
            ],
          ),

          const Gap(15),

          _card(
            title: 'Unforgettable Adventures',
            asset: "assets/logo/unforgettable_adventures_logo.png",
            points: [
              "Opening Ceremony with a drone show, fireworks and an international artist headliner",
              "Air Force Jet Fighters Flyover",
              "Explore Clark’s theme parks, shopping centers, dining options, and sports facilities",
            ],
          ),

          const Gap(15),

          Assets.youtubeVideoPlayer,
        ],
      ),
    );
  }

  Card _card({
    required String title,
    double? titleSize,
    required List<String> points,
    required String asset,
  }) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  title: title,
                  fontSize: titleSize ?? 14,
                  fontWeight: FontWeight.bold,
                ),
                Image.asset(asset, height: 20),
              ],
            ),
            const Gap(10),
            ...points.map(
              (point) => Column(children: [_cardRow(point), const Gap(10)]),
            ),
          ],
        ),
      ),
    );
  }

  Row _cardRow(String title) {
    return Row(
      spacing: 15,
      children: [
        Icon(Icons.circle, size: 5),
        Expanded(
          child: CustomText(
            title: title,
            fontSize: 12,
            maxLines: 2,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
