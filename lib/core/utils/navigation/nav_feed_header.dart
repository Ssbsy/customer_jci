import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
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
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: AppColors.coolGray),
                    ),
                    child: CustomText(
                      title: "What's on your mind, John?",
                      textColor: AppColors.coolGray,
                      fontSize: 12,
                    ),
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
