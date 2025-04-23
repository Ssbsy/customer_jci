import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text_field.dart';
import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/core/constants/texts.dart';

class AccountSettingsTextFields extends StatefulWidget {
  const AccountSettingsTextFields({super.key});

  @override
  State<AccountSettingsTextFields> createState() =>
      _AccountSettingsTextFieldsState();
}

class _AccountSettingsTextFieldsState extends State<AccountSettingsTextFields> {
  final _controller = TextEditingController();
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmNewPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Builder(
        builder: (context) {
          if (globals.isChangePassword) {
            return _changePassword(context);
          } else if (globals.isDeleteAccount) {
            return _deleteAccountField(
              'Enter your password to confirm',
              'Password',
              _controller,
            );
          } else {
            return _email(context);
          }
        },
      ),
    );
  }

  Column _email(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(title: 'Email', fontWeight: FontWeight.bold, fontSize: 12),
        const SizedBox(height: 10),
        CustomTextField(
          controller: _controller,
          hintText: 'Email',
          fontSize: 12,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              padding: 10,
              containerWidth: MediaQuery.of(context).size.width * 0.45,
              text: 'Save Changes',
              onTap: () {},
              textSize: 14,
              textColor: AppColors.white,
              containerColor: AppColors.alertRed,
              borderColor: AppColors.alertRed,
              borderRadius: 22,
            ),
          ],
        ),
      ],
    );
  }

  Column _changePassword(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _changePasswordTextFields('Old password', _oldPasswordController),
        _changePasswordTextFields('New password', _newPasswordController),
        _changePasswordTextFields(
          'Confirm new password',
          _confirmNewPasswordController,
        ),
        const Gap(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              padding: 10,
              containerWidth: MediaQuery.of(context).size.width * 0.45,
              text: 'Save Changes',
              onTap: () {},
              textSize: 14,
              textColor: AppColors.white,
              containerColor: AppColors.alertRed,
              borderColor: AppColors.alertRed,
              borderRadius: 22,
            ),
          ],
        ),
      ],
    );
  }

  Column _changePasswordTextFields(
    String title,
    TextEditingController controller,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        CustomText(title: title, fontWeight: FontWeight.bold, fontSize: 12),
        CustomTextField(controller: _controller, hintText: title, fontSize: 12),
      ],
    );
  }

  Expanded _deleteAccountField(
    String title,
    String hint,
    TextEditingController controller,
  ) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          CustomText(
            title: Texts.accountsettingsDeleteAccount,
            maxLines: 10,
            fontSize: 12,
          ),
          CustomText(title: title, fontWeight: FontWeight.bold, fontSize: 12),
          CustomTextField(
            controller: _controller,
            hintText: hint,
            fontSize: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                padding: 10,
                containerWidth: MediaQuery.of(context).size.width * 0.45,
                text: 'Save Changes',
                onTap: () {},
                textSize: 14,
                textColor: AppColors.white,
                containerColor: AppColors.alertRed,
                borderColor: AppColors.alertRed,
                borderRadius: 22,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
