import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_app_bar.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text_field.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/presentations/navigation/home_page.dart';

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
          leading: IconButton(
            onPressed: () => Get.to(() => const HomePage()),
            icon: Icon(Icons.arrow_back),
          ),
          actionWidgets: [Assets.jciLogoPng],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
