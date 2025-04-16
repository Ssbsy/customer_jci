import 'package:customer_jci/components/custom_widgets.dart';
import 'package:customer_jci/pages/forgot_pass_page.dart';
import 'package:customer_jci/pages/register_page.dart';
import 'package:flutter/material.dart'; 

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const Color primaryColor = Color(0xFFE0401E);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(12));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/worldcon_bg.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Semi-transparent overlay
          Container(
            color: Colors.white.withOpacity(0.4),
          ),

          // Login Card
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                        Image.asset(
                          'assets/JCI - logo - png.png',
                          height: 70,
                        ),
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
                      primaryColor: primaryColor,
                      borderRadius: borderRadius,
                    ),

                    const SizedBox(height: 16),

                    // Password Field
                    CustomWidgets.buildTextField(
                      hintText: 'Your account password',
                      prefixIcon: Icons.lock_outline,
                      obscureText: true,
                      primaryColor: primaryColor,
                      borderRadius: borderRadius,
                    ),

                    const SizedBox(height: 8),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ForgotPasswordPage()),
                          );
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Sign In Button
                    CustomWidgets.buildButton(
                      text: "Sign In",
                      onPressed: () {
                        // TODO: Handle login
                      },
                      primaryColor: primaryColor,
                    ),

                    const SizedBox(height: 8),

                    // Register Button
                    CustomWidgets.buildOutlinedButton(
                      text: "Register",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterPage()),
                        );
                      },
                      primaryColor: primaryColor,
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
