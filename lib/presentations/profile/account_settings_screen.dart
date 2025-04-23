import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_floating_action_bar.dart';
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
    globals.isDeleteAccount = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.white,
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
                            isBold:
                                !globals.isChangePassword &&
                                !globals.isDeleteAccount,
                            onTap: () {
                              globals.isChangePassword = false;
                              globals.isDeleteAccount = false;
                              setState(() {});
                              debugPrint('clicked');
                            },
                          ),
                          _text(
                            'Change Password',
                            isBold: globals.isChangePassword,
                            onTap: () {
                              globals.isChangePassword = true;
                              globals.isDeleteAccount = false;
                              setState(() {});
                              debugPrint('clicked');
                            },
                          ),
                          _text(
                            'Delete Account',
                            isBold: globals.isDeleteAccount,
                            onTap: () {
                              globals.isDeleteAccount = true;
                              globals.isChangePassword = false;
                              setState(() {});
                            },
                            color: AppColors.alertRed,
                          ),
                        ],
                      ),
                    ),

                    const Gap(20),

                    AccountSettingsTextFields(),

                    const Gap(150),
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
        fontSize: 12.5,
        textColor: color ?? AppColors.black,
      ),
    );
  }
}
