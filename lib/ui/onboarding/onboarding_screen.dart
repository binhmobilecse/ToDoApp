import 'package:flutter/material.dart';
import 'package:fluttertodoapp/ui/onboarding/onboarding_child_view.dart';
import 'package:fluttertodoapp/utils/OnboardingPagePosition.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: _pageController,
        children: [
          OnboardingChildView(
            pagePosition: OnboardingPagePosition.page1,
            nextAction: () {
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeIn);
            },
            backAction: () {
              // do nothing
            },
          ),
          OnboardingChildView(
            pagePosition: OnboardingPagePosition.page2,
            nextAction: () {
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeIn);
            },
            backAction: () {
              _pageController.previousPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeIn);
            },
          ),
          OnboardingChildView(
            pagePosition: OnboardingPagePosition.page3,
            nextAction: () {
              // do nothing
            },
            backAction: () {
              _pageController.previousPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeIn);
            },
          ),
        ],
      ),
    );
  }
}
