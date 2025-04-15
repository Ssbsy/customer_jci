import 'package:customer_jci/components/custom_text.dart';
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
          ExpansionTile(
            leading: Image.asset('assets/tw-Chat-Alt-2-Regular.png'),
            title: Text('What is JCI World Congress 2016?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomText(
                      title:
                          'The JCI World Congress 2026 is an annual global event organized by Junior Chamber International (JCI), bringing together young leaders, entrepreneurs, and change-makers from around the world. It serves as a platform for networking, leadership development, business opportunities, and discussion, on global challenges',
                      fontWeight: FontWeight.w700,
                    ),
                    CustomText(
                      title:
                          "In 2026, the event will take place in Clark, Pampanga, Philippines, offering a mix of cultural experiences, professional growth, and collaboration opportunities. Attendees can expect keynote speeches, workshops, competitions, and social events that foster innovation and positive impact.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
