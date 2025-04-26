import 'package:flutter/material.dart';

class NavModel {
  final IconData icon;
  final Widget Function() builder;

  NavModel({required this.icon, required this.builder});
}
