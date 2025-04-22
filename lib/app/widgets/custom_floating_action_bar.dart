import 'package:flutter/material.dart';

class CustomFloatingActionBar extends StatefulWidget {
  const CustomFloatingActionBar({super.key});

  @override
  State<CustomFloatingActionBar> createState() =>
      _CustomFloatingActionBarState();
}

class _CustomFloatingActionBarState extends State<CustomFloatingActionBar> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.message),
      label: Text('Contact'),
    );
  }
}
