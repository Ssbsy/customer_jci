import 'package:customer_jci/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JCI Customer',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
