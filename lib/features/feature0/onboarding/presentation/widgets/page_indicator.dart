import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final bool isActive;

  const PageIndicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 8),
      height: 15,
      width: isActive ? 25 : 15,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFEF5A22) : Color(0xFFEDEEF2),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}