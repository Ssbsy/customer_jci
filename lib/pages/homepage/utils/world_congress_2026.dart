import 'package:customer_jci/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class WorldCongress2026 extends StatelessWidget {
  const WorldCongress2026({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          CustomText(
            title: 'World Congress 2026',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          const Gap(25),

          CustomText(
            title:
                "Experience a global gathering of leaders, entrepreneurs, and change-makers at the JCI World Congress 2026 in Clark, Pampanga. Engage in high-impact discussions, cultural exchanges, and networking opportunities while exploring the vibrant offerings of the Philippines’ premier MICE destination.",
            isJustified: true,
          ),

          const Gap(25),

          _card(
            title: 'Innovation and Business',
            asset: "assets/Innovation_and_Business_logo_png.png",
            points: [
              "Global platform for entrepreneurs and business leaders",
              "Exploration of new ventures and strategic partnerships",
              "Cutting-edge digital solutions and technological advancements",
            ],
          ),

          const Gap(15),

          _card(
            title: 'Cultural & Networking Experiences',
            asset: "assets/Cultural_and_Networking_Experiences_logo.png",
            points: [
              "“Tokyo Drift” themed Japan Night",
              "Supercar showcase and street party with DJ",
              "Global Village program featuring Nayong Pilipino and international booths",
            ],
          ),

          const Gap(15),

          _card(
            title: 'Green & Sustainable Solutions',
            asset: "assets/Green_and_Sustainable_Solutions_logo.png",
            points: [
              "Sustainable tourism and eco-friendly initiatives",
              "Government-backed infrastructure and green spaces",
              "Seamless transportation with Clark Loop & free delegate shuttles",
            ],
          ),

          const Gap(15),

          _card(
            title: 'Unforgettable Adventures',
            asset: "assets/Unforgettable_Adventures_logo.png",
            points: [
              "Opening Ceremony with a drone show, fireworks and an international artist headliner",
              "Air Force Jet Fighters Flyover",
              "Explore Clark’s theme parks, shopping centers, dining options, and sports facilities",
            ],
          ),

          const Gap(15),

          Stack(
            children: [SvgPicture.asset('assets/YouTube_Video_Player.svg')],
          ),
        ],
      ),
    );
  }

  Card _card({
    required String title,
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
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                Image.asset(asset),
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
        Expanded(child: CustomText(title: title, fontSize: 13, maxLines: 2)),
      ],
    );
  }
}
