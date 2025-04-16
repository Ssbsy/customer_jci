library my_app.globals;

import 'package:flutter/material.dart';

bool isLoggedIn = false;

Future<void> refreshPage(State state) async {
  await Future.delayed(const Duration(milliseconds: 500));
  state.setState(() {});
}
