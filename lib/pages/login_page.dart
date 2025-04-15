import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
    ); //For navigation back lang yung automaticallyImplyLeading, alisin niyo na lang siya later, follow niyo design sa figma
  }
}
