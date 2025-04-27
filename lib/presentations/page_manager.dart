import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/app/widgets/custom_floating_action_bar.dart';
import 'package:jci_worldcon_customer/app/widgets/end_drawer_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/header_widget.dart';
import 'package:jci_worldcon_customer/app/widgets/navigation_widget.dart';
import 'package:jci_worldcon_customer/presentations/navigation/activity_page.dart';
import 'package:jci_worldcon_customer/presentations/navigation/feed_page.dart';
import 'package:jci_worldcon_customer/presentations/navigation/home_page.dart';
import 'package:jci_worldcon_customer/presentations/navigation/notif_page.dart';
import 'package:jci_worldcon_customer/presentations/navigation/rating_page.dart';
import 'package:jci_worldcon_customer/presentations/navigation/resto_page.dart';

class PageManager extends StatefulWidget {
  final int index;

  const PageManager({super.key, this.index = 0});

  @override
  State<PageManager> createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  late final PageController _pageController;
  late int _currentIndex;

  final List<Widget> _pages = const [
    HomePage(),
    FeedPage(),
    ActivityPage(),
    RestoPage(),
    NotifPage(),
    RatingPage(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
    _pageController = PageController(initialPage: _currentIndex);
  }

  void _onNavTap(int index) {
    setState(() => _currentIndex = index);
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            const HeaderWidget(),
            if (globals.isLoggedIn)
              NavigationWidget(currentIndex: _currentIndex, onTap: _onNavTap),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) => setState(() => _currentIndex = index),
                children: _pages,
              ),
            ),
          ],
        ),
        endDrawer: const EndDrawerWidget(),
        floatingActionButton:
            globals.isLoggedIn ? const CustomFloatingActionBar() : null,
      ),
    );
  }
}
