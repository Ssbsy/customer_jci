import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FrequentlyAskedQuestions extends StatelessWidget {
  const FrequentlyAskedQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            title: 'Frequently Asked Questions',
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
          const Gap(30),
          _listTile(
            'What is JCI World Congress 2016?',
            'The JCI World Congress 2026 is an annual global event organized by Junior Chamber International (JCI), bringing together young leaders, entrepreneurs, and change-makers from around the world. It serves as a platform for networking, leadership development, business opportunities, and discussion, on global challenges',
            subTitle2:
                "In 2026, the event will take place in Clark, Pampanga, Philippines, offering a mix of cultural experiences, professional growth, and collaboration opportunities. Attendees can expect keynote speeches, workshops, competitions, and social events that foster innovation and positive impact.",
          ),
          const Gap(15),
          _listTile(
            'When and where will JCI World Congress 2026 take place?',
            'The JCI World Congress 2026 will take place in Clark, Pampanga, Philippines.',
            subTitle2:
                "The exact dates have not been officially announced yet, but the JCI World Congress is typically held in November each year. Clark, known for its modern infrastructure, accessibility, and rich cultural heritage, will serve as the perfect venue for this global gathering of young leaders and professionals.",
          ),
          const Gap(15),
          _listTile(
            'Who can attend JCI World Congress 2026?',
            'The JCI World Congress 2026 is open to:',
            subTitle3: [
              "JCI Members - Active members from JCI organizations worldwide",
              "Young Leaders & Entrepreneurs - Individuals passionate about leadership, business, and social impact",
              "Government & Business Professionals - Policymakers, corporate leaders, and industry experts",
              "Partners & Sponsors - Organizations supporting JCI's mission and global impact",
              "Guests & Observers - Anyone interested in networking, leadership development, and international collaboration",
            ],
          ),
          const Gap(15),
          _listTile(
            'Waht are the main highlights of JCI World Congress 2026?',
            'The JCI World Congress 2026 is set to take place in Clark, Pampanga, Philippines, from November 11-15, 2026, promises an exciting and impactful experience for over 6,000 delegates from 120+ countries. This global gathering will feature leadership training, business forums, networking opportunities, and prestigious JCI awards and competitions. The event will kick off with a spectacular opening ceremony, including a drone show, fireworks display, an international artist headliner, and an Air Force jet fighters flyover. Delegates will enjoy cultural showcases such as the Global Village at Nayong Pilipino, country-themed programs like Japan Night: "Tokyo Drift", and various enterntainment and networking events. Clark, known as the Culinary Capital of the Philippines, will offer 160+ dining options including free World Congress shuttle services, airport transfers, and Grab car services, and top-tier convention and leisure facilities, the JCI World Congress 2026 will be an unforgettable event where young leaders unite to Make Great Things Happen!',
          ),
          const Gap(15),
          _listTile(
            'How can I register and get more information?',
            "You can register for JCI World Congress 2026 by visiting the official JCI World Congress websites or following updates from JCI Philippines and JCI International. The Process includes filling out an online form, selecting a ticket type, completing payment, and receiving a confirmation email. Early registration is recommended for discounts and guaranteed accommodations. For more details on Schedules, travel, and event updates, follow JCI's official channels or contact the organizing committee",
          ),
        ],
      ),
    );
  }

  ExpansionTile _listTile(
    String title,
    String subTitle, {
    String? subTitle2,
    List<String?>? subTitle3,
  }) {
    return ExpansionTile(
      leading: Image.asset('assets/tw-Chat-Alt-2-Regular.png'),
      title: CustomText(title: title),
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            spacing: 15,
            children: [
              CustomText(title: subTitle, isJustified: true),
              if (subTitle2 != null)
                CustomText(title: subTitle2, isJustified: true),
              if (subTitle3 != null && subTitle3.isNotEmpty) ...[
                const Gap(10),
                Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      subTitle3
                          .whereType<String>()
                          .map((text) => _rowSubTitleContent(text))
                          .toList(),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

Row _rowSubTitleContent(String _text) {
  return Row(
    spacing: 15,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Icon(Icons.check, color: Colors.white, size: 18),
      ),
      Expanded(child: CustomText(title: _text, maxLines: 4)),
    ],
  );
}
