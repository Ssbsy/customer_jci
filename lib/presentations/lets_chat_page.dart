import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_app_bar.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text_field.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class LetsChatPage extends StatefulWidget {
  const LetsChatPage({super.key});

  @override
  State<LetsChatPage> createState() => _LetsChatPageState();
}

class _LetsChatPageState extends State<LetsChatPage> {
  final _nameController = TextEditingController();
  final _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(
          isAutomaticallyImplyLeading: true,
          actionWidgets: [Assets.jciLogoPng],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: AppColors.alertRed),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          title: 'CHAT WITH US',
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        ),
                        CustomTextField(
                          controller: _nameController,
                          hintText: 'Your Name',
                          enabledBorderSideColor: AppColors.semiRedOrange,
                          focusedBorderSideColor: AppColors.alertRed,
                          fillColor: AppColors.semiRedOrange,
                          isFilled: true,
                        ),
                        CustomTextField(
                          controller: _messageController,
                          hintText: 'Your Message',
                          fillColor: AppColors.semiRedOrange,
                          focusedBorderSideColor: AppColors.alertRed,
                          isFilled: true,
                          enabledBorderSideColor: AppColors.semiRedOrange,
                          maxLines: 10,
                        ),
                        CustomButton(
                          padding: 10,
                          text: 'Send',
                          onTap: () {},
                          textSize: 16,
                          textColor: AppColors.white,
                          containerColor: AppColors.alertRed,
                          borderColor: AppColors.alertRed,
                          borderRadius: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
