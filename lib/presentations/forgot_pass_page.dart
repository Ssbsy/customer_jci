import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_widgets.dart'; // Import your CustomWidgets class

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/see_you_in_2026_bg.png',
              fit: BoxFit.cover,
            ),
          ),

          // Semi-transparent overlay
          Container(color: Colors.white.withOpacity(0.4)),

          // Forgot Password Card
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 400),
                padding: const EdgeInsets.all(16),
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
                        Image.asset('assets/logo/jci_logo_png.png', height: 70),
                      ],
                    ),

                    const SizedBox(height: 16),

                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 4.0),
                        child: Text(
                          "Please enter your email and we’ll send\nyou a password reset link",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Use CustomWidgets for the email label and input field
                    CustomWidgets.buildLabel("Email"),

                    const SizedBox(height: 8),

                    CustomWidgets.buildInputField('Your account email'),

                    const SizedBox(height: 24),

                    // Continue Button (using custom button)
                    CustomWidgets.buildButton(
                      text: "Continue",
                      onPressed: () {
                        // TODO: Handle forgot password logic
                      },
                      primaryColor: const Color(0xFFE0401E),
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
