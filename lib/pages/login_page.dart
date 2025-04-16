import 'package:customer_jci/globals.dart' as globals;
import 'package:customer_jci/pages/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Temporary lang to
        leading: IconButton(
          onPressed: () {
            globals.isLoggedIn = true;
            Get.to(() => HomePage());
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
