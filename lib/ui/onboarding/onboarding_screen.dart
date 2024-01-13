import 'package:flutter/material.dart';
import 'package:fluttertodoapp/ui/onboarding/onboarding_child_view.dart';
import 'package:fluttertodoapp/utils/OnboardingPagePosition.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        children: [
          OnboardingChildView(pagePosition: OnboardingPagePosition.page1),
          OnboardingChildView(pagePosition: OnboardingPagePosition.page2),
          OnboardingChildView(pagePosition: OnboardingPagePosition.page3),
        ],
      ),
    );
  }
}
