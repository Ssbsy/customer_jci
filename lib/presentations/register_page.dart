import 'package:flutter/material.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_widgets.dart';
import 'package:jci_worldcon_customer/core/constants/assets.dart';
import 'package:jci_worldcon_customer/presentations/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    bool isSenatorYes = false;
    bool isSenatorNo = false;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(child: Assets.seeYouIn2026),
          Container(color: Colors.white.withOpacity(0.4)),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 26.0,
                vertical: 60.0,
              ),
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
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Please provide us with the following informations",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 8),
                    CustomWidgets.buildLabel("National organization"),
                    CustomWidgets.buildInputField("Organization name"),
                    CustomWidgets.buildLabel("JCI Senator"),
                    Row(
                      children: [
                        Checkbox(
                          value: isSenatorYes,
                          onChanged: (val) {
                            setState(() {
                              isSenatorYes = val!;
                              if (val) isSenatorNo = false;
                            });
                          },
                          activeColor: const Color(0xFFE0401E),
                        ),
                        const Text("Yes"),
                        const SizedBox(width: 20),
                        Checkbox(
                          value: isSenatorNo,
                          onChanged: (val) {
                            setState(() {
                              isSenatorNo = val!;
                              if (val) isSenatorYes = false;
                            });
                          },
                          activeColor: const Color(0xFFE0401E),
                        ),
                        const Text("No"),
                      ],
                    ),
                    CustomWidgets.buildLabel("Local organization name"),
                    CustomWidgets.buildInputField("Local organization name"),
                    CustomWidgets.buildLabel("First Name"),
                    CustomWidgets.buildInputField("John"),
                    CustomWidgets.buildLabel("Surname"),
                    CustomWidgets.buildInputField("Smith"),
                    CustomWidgets.buildLabel("Email"),
                    CustomWidgets.buildInputField("Smith@gmail.com"),
                    CustomWidgets.buildLabel("Login password"),
                    CustomWidgets.buildInputField(
                      "Password",
                      obscureText: true,
                    ),
                    CustomWidgets.buildLabel("Confirm Login Password"),
                    CustomWidgets.buildInputField(
                      "Password",
                      obscureText: true,
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: const Color(0xFFE0401E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: () {
                          // TODO: Handle registration
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text("Or"),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Color(0xFFE0401E)),
                        ),
                      ),
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
