import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';

class NavFeedContent extends StatelessWidget {
  final Widget imageAsset;
  final String reactors;
  final String comments;
  final String shares;
  final String? description;
  const NavFeedContent({
    super.key,
    required this.imageAsset,
    required this.reactors,
    required this.comments,
    required this.shares,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (description != null)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5,
              ),
              child: CustomText(
                title: description,
                maxLines: 10,
                isJustified: true,
              ),
            ),
          imageAsset,
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Ionicons.heart_circle, color: Colors.red, size: 20),
                  const Gap(5),
                  CustomText(title: reactors, fontSize: 13),
                ],
              ),
              Row(
                children: [
                  CustomText(title: comments),
                  const Gap(5),
                  Icon(Icons.circle, size: 20),
                  const Gap(15),
                  CustomText(title: shares),
                  const Gap(5),
                  Icon(Icons.share, size: 20),
                ],
              ),
            ],
          ),
          Divider(indent: 20, endIndent: 20),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _interactions(Icon(Icons.thumb_up_outlined, size: 20), 'Like'),

              _interactions(Icon(Icons.circle, size: 20), 'Comment'),

              _interactions(Icon(Icons.share, size: 20), 'Share'),
            ],
          ),
        ],
      ),
    );
  }

  Row _interactions(Icon icon, String title) {
    return Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [icon, CustomText(title: title)],
    );
  }
}
