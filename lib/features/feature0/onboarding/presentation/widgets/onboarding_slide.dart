import 'package:flutter/material.dart';
import '../pages/onboarding_page.dart';

class OnboardingSlide extends StatelessWidget {
  final OnboardingData data;

  const OnboardingSlide({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Background image
        Image.asset(
          data.image,
          fit: BoxFit.cover,
        ),

       

        // Content
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                style: TextStyle(
                  color: Color(0xFFF0EFF3),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  height: 32 / 24,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                data.description,
                style: TextStyle(
                  color: Color(0xFFF0EFF3),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 20 / 14,
                  letterSpacing: 0.25,
                ),
              ),
              SizedBox(height:32),
              const SizedBox(height: 111), // Space for indicators and button
            ],
          ),
        ),
      ],
    );
  }
}
