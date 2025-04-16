import 'package:customer_jci/components/custom_button.dart';
import 'package:customer_jci/components/custom_text.dart';
import 'package:customer_jci/components/end_drawer_widget.dart';
import 'package:customer_jci/components/footer_widget.dart';
import 'package:customer_jci/components/header_widget.dart';
import 'package:customer_jci/pages/homepage/utils/see_you_in_2026.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyNowPage extends StatelessWidget {
  const BuyNowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            const HeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        children: [
                          CustomText(
                            title: 'Ready for World Congress 2026',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                          const Gap(10),
                          CustomText(
                            fontSize: 18,
                            maxLines: 2,
                            richText: TextSpan(
                              text:
                                  'Mark your calendars! World Congress is coming to ',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              children: [
                                TextSpan(
                                  text: 'PHILIPPINES',
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const Gap(15),

                          Card(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 35,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        title: 'WORLD CONGRESS 2026',
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Image.asset(
                                        'assets/JCI_logo_png.png',
                                        height: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                  CustomText(
                                    title: 'Expire Date: 2026-11-15',
                                    fontSize: 12,
                                  ),
                                  const Gap(10),
                                  CustomText(
                                    title: 'Special Offer',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  const Gap(10),
                                  _rowSpecialOffer('Early Bird - USD 530.000'),
                                  const Gap(5),
                                  _rowSpecialOffer('Regular - USD 560.000'),
                                  const Gap(5),
                                  _rowSpecialOffer(
                                    'Late Registration - USD 630.000',
                                  ),
                                  const Gap(15),
                                  _row('Regular Ticket', '—  1  +', false),
                                  const Gap(25),
                                  _row('Total', '\$560', true),
                                ],
                              ),
                            ),
                          ),
                          const Gap(15),
                          Card(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(title: 'Ticket Discount'),
                                  Icon(
                                    Icons.airplane_ticket,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(15),
                          CustomButton(
                            text: 'Pay Now',
                            onTap: () {},
                            isBold: true,
                            textColor: Colors.white,
                            borderColor: Colors.deepOrange,
                            containerColor: Colors.deepOrange,
                            borderRadius: 22,
                          ),
                          const Gap(25),
                        ],
                      ),
                    ),
                    FooterWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      endDrawer: const EndDrawerWidget(),
    );
  }

  Row _row(String title, String subTitle, bool isBold) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          title: title,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        ),
        CustomText(
          title: subTitle,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        ),
      ],
    );
  }

  Row _rowSpecialOffer(String title) {
    return Row(
      spacing: 10,
      children: [
        Icon(Icons.star, color: Colors.yellow.shade800),
        CustomText(title: title),
      ],
    );
  }
}
