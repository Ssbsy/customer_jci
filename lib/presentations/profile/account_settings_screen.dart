import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/footer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:jci_worldcon_customer/core/utils/profile/account_settings_profile.dart';
import 'package:jci_worldcon_customer/core/utils/profile/account_settings_text_fields.dart';
import 'package:jci_worldcon_customer/app/globals.dart' as globals;

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  @override
  void initState() {
    globals.isChangePassword = false;
    super.initState();
  }

  @override
  void dispose() {
    globals.isChangePassword = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            const HeaderWidget(),
            const Gap(20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const AccountSettingsProfile(),
                    const Gap(15),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        spacing: 15,
                        children: [
                          _text(
                            'General',
                            isBold: !globals.isChangePassword,
                            onTap: () {
                              globals.isChangePassword = false;
                              setState(() {});
                              debugPrint('clicked');
                            },
                          ),
                          _text(
                            'Change Password',
                            isBold: globals.isChangePassword,
                            onTap: () {
                              globals.isChangePassword = true;
                              setState(() {});
                              debugPrint('clicked');
                            },
                          ),
                          _text(
                            'Delete Account',
                            onTap: () {},
                            color: AppColors.alertRed,
                          ),
                        ],
                      ),
                    ),

                    const Gap(20),

                    AccountSettingsTextFields(),

                    const Gap(400),
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

  GestureDetector _text(
    String text, {
    bool isBold = true,
    VoidCallback? onTap,
    Color? color,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: CustomText(
        title: text,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        fontSize: 16,
        textColor: color ?? AppColors.black,
      ),
    );
  }
}
