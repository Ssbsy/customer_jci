import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_app_bar.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isAutomaticallyImplyLeading: true,
        actionWidgets: [Assets.jciLogoPng],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.alertRed),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  CustomText(title: 'CHAT WITH US'),
                  CustomTextField(
                    controller: _nameController,
                    hintText: 'Your Name',
                    fillColor: AppColors.semiRedOrange,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
