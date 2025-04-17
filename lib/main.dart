import 'package:jci_worldcon_customer/presentations/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: GetMaterialApp(
        title: 'JCI WorldCon Customer',
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
