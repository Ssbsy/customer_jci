import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/app/themes/app_colors.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/presentations/forgot_pass_page.dart';
import 'package:jci_worldcon_customer/presentations/navigation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_widgets.dart';
import 'package:jci_worldcon_customer/presentations/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(child: Assets.seeYouIn2026),

          // Semi-transparent overlay
          Container(color: Colors.white.withOpacity(0.4)),

          // Login Card
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Back and Logo Row
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () => Navigator.pop(context),
                        ),
                        const Spacer(),
                        Assets.jciLogoPng,
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Welcome Text
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Log in to your Account",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Email Field
                    CustomWidgets.buildTextField(
                      hintText: 'Your account email',
                      prefixIcon: Icons.email_outlined,
                      primaryColor: AppColors.alertRed,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    const SizedBox(height: 16),

                    // Password Field
                    CustomWidgets.buildTextField(
                      hintText: 'Your account password',
                      prefixIcon: Icons.lock_outline,
                      obscureText: true,
                      primaryColor: AppColors.alertRed,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    const SizedBox(height: 8),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotPasswordPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: AppColors.alertRed),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Sign In Button
                    CustomWidgets.buildButton(
                      text: "Sign In",
                      onPressed: () {
                        globals.isLoggedIn = true;
                        Get.to(() => HomePage());
                      },
                      primaryColor: AppColors.alertRed,
                    ),

                    const SizedBox(height: 8),

                    // Register Button
                    CustomWidgets.buildOutlinedButton(
                      text: "Register",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      primaryColor: AppColors.alertRed,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
