import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final bool isCenterTitle;
  final List<Widget>? actionWidgets;
  final bool isAutomaticallyImplyLeading;
  final Color backgroundColor;
  final Color foregroundColor;
  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.isCenterTitle = true,
    this.actionWidgets,
    this.isAutomaticallyImplyLeading = false,
    this.backgroundColor = AppColors.transparent,
    this.foregroundColor = AppColors.black,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      automaticallyImplyLeading: isAutomaticallyImplyLeading,
      title: title,
      centerTitle: isCenterTitle,
      actions: actionWidgets,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
