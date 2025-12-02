import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const OnboardingButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(double.infinity, 56),
        backgroundColor: const Color(0xFFEF5A22),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFFF0EFF3),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 14,
          letterSpacing: 0.25,
          height: 20 / 14,
        ),
      ),
    );
  }
}
