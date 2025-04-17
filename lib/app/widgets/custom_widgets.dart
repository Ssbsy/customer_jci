import 'package:flutter/material.dart';

class CustomWidgets {
  // Reusable Label Widget
  static Widget buildLabel(String label) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 4),
        child: Text(label, style: const TextStyle(fontSize: 14)),
      ),
    );
  }

  // Reusable Input Field Widget
  static Widget buildInputField(String hintText, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(color: Colors.black, fontSize: 14),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE0401E)),
        ),
      ),
    );
  }

  // Reusable TextField widget
  static Widget buildTextField({
    required String hintText,
    required IconData prefixIcon,
    bool obscureText = false,
    required Color primaryColor,
    required BorderRadius borderRadius,
  }) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(prefixIcon, color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: primaryColor),
        ),
      ),
    );
  }

  // Reusable ElevatedButton widget
  static Widget buildButton({
    required String text,
    required VoidCallback onPressed,
    required Color primaryColor,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: onPressed,
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }

  // Reusable OutlinedButton widget
  static Widget buildOutlinedButton({
    required String text,
    required VoidCallback onPressed,
    required Color primaryColor,
  }) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: primaryColor)),
      ),
    );
  }
}
