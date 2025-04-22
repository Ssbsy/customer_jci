import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_floating_action_bar.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LinkTicketPage extends StatelessWidget {
  const LinkTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            const HeaderWidget(),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: 'Ticket',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(title: 'Ticket Number', fontSize: 15),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '0000001',
                              hintStyle: TextStyle(fontSize: 15),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: CustomButton(
                      text: 'Link',
                      onTap: () {},
                      textColor: Colors.white,
                      isBold: true,
                      containerColor: Colors.blue,
                      borderColor: Colors.blue,
                      borderRadius: 20,
                      padding: 9,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        endDrawer: const EndDrawerWidget(),
        floatingActionButton: const CustomFloatingActionBar(),
      ),
    );
  }
}
