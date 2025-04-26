import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text_field.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';

class NavFeedHeader extends StatefulWidget {
  const NavFeedHeader({super.key});

  @override
  State<NavFeedHeader> createState() => _NavFeedHeaderState();
}

class _NavFeedHeaderState extends State<NavFeedHeader> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        spacing: 5,
        children: [
          Row(
            spacing: 15,
            children: [
              Assets.profileIcon,
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: CustomTextField(
                    controller: controller,
                    hintText: "What's on your mind, John?",
                    fontSize: 11,
                    padding: const EdgeInsets.all(5),
                    enabledBorderRadius: 30,
                    focusedBorderRadius: 30,
                    isContentPaddingNull: false,
                    contentPaddingVertical: 0,
                    contentPaddingHorizontal: 20,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                spacing: 5,
                children: [
                  Assets.liveVideoPng,
                  CustomText(
                    title: 'Live Video',
                    textColor: AppColors.mutedPurple,
                  ),
                ],
              ),
              Row(
                spacing: 5,
                children: [
                  Assets.photoPng,
                  CustomText(
                    title: 'Photo/Video',
                    textColor: AppColors.mutedPurple,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
