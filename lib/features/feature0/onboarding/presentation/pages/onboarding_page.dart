// lib/features/onboarding/presentation/pages/onboarding_page.dart
import 'package:flutter/material.dart';
import '../widgets/onboarding_slide.dart';
import '../widgets/page_indicator.dart';
import '../widgets/onboarding_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingData> _pages = [
    OnboardingData(
      image: 'assets/images/onboarding/onboarding1.jpg',
      title: 'Say It. Send It. Done',
      description:
          'Say what you need, transfer cash, top up airtime, or check balance. Raba listens and gets it done.',
    ),
    OnboardingData(
      image: 'assets/images/onboarding/onboarding2.jpg',
      title: 'Your Wallet, Just a Word Away',
      description:
          'Send, receive, and manage money with simple voice commands, fast, secure, and effortless.',
    ),
    OnboardingData(
      image: 'assets/images/onboarding/onboarding3.jpg',
      title: 'Safe, Smart, and Always With You',
      description:
          'Your money is protected with bank-grade security, voice authentication, and instant confirmations.',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to next screen (login/signup)
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => NextScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView for sliding screens
          PageView.builder(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              return OnboardingSlide(data: _pages[index]);
            },
          ),

          // Page indicators
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) => PageIndicator(
                  isActive: index == _currentPage,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 40,
            left: 24,
            right: 24,
            child: OnboardingButton(
              text: _currentPage == _pages.length - 1 ? 'Get Started' : 'Next',
              onPressed: _nextPage,
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingData {
  final String image;
  final String title;
  final String description;

  OnboardingData({
    required this.image,
    required this.title,
    required this.description,
  });
}
