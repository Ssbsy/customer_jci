import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.167,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile_bg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          title: 'Unite for Impact',
                          textColor: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          title:
                              'Welcome to JCI World Congress 2026, where global leaders collaborate to create lasting change in the heart of the Philippines!',
                          maxLines: 3,
                          isCentered: true,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Card(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 60.0,
                              bottom: 20.0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomText(title: 'Smith'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(title: '@John'),
                                    const Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Image.asset(
                                  'assets/images/qr_img.png',
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        child: Image.asset(
                          'assets/icons/profile_pic.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _containerUnderQR(
                        'Edit profile',
                        icon: const Icon(Icons.edit, size: 16),
                      ),
                      const SizedBox(width: 10),
                      _containerUnderQR('Account Settings'),
                      const SizedBox(width: 10),
                      _containerUnderQR('Orders'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: 'About me',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                        const SizedBox(height: 15),
                        Container(
                          padding: const EdgeInsets.all(15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: 'Location',
                                textColor: Colors.grey.shade700,
                              ),
                              const Gap(30),
                              CustomText(
                                title: 'Organization',
                                textColor: Colors.grey.shade700,
                              ),
                              CustomText(
                                title: 'Philippines',
                                fontWeight: FontWeight.bold,
                              ),
                              const Gap(30),
                              CustomText(
                                title: 'Branch Position',
                                textColor: Colors.grey.shade700,
                              ),
                              const Gap(30),
                              CustomText(
                                title: 'Phone number',
                                textColor: Colors.grey.shade700,
                              ),
                              CustomText(title: "()"),
                              const Gap(30),
                              CustomText(
                                title: "Email",
                                textColor: Colors.grey.shade700,
                              ),
                              CustomText(
                                title: 'Johnsmith@gmail.com',
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),

                        const Gap(40),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: 'Transaction History',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),

                            const Gap(10),

                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey.shade400,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                spacing: 15,
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Search',
                                        hintStyle: TextStyle(fontSize: 15),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(25),
                ],
              ),
            ),
          ),
        ],
      ),
      endDrawer: const EndDrawerWidget(),
    );
  }

  Container _containerUnderQR(String title, {Icon? icon}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.red.shade700),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Center(child: _actions(title, icon: icon)),
    );
  }

  Row _actions(String title, {Icon? icon}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomText(title: title, fontSize: 12),
        if (icon != null) ...[const SizedBox(width: 10), icon],
      ],
    );
  }
}
