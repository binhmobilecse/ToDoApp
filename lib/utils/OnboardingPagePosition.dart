enum OnboardingPagePosition {
  page1,
  page2,
  page3,
}

extension OnboardingPagePositionExtension on OnboardingPagePosition {
  String getPageImage() {
    switch (this) {
      case OnboardingPagePosition.page1:
        return "assets/image/onboarding_1.png";
      case OnboardingPagePosition.page2:
        return "assets/image/onboarding_2.png";
      case OnboardingPagePosition.page3:
        return "assets/image/onboarding_3.png";
    }
  }

  String getTitle() {
    switch (this) {
      case OnboardingPagePosition.page1:
        return "Manage your tasks";
      case OnboardingPagePosition.page2:
        return "Create daily routine";
      case OnboardingPagePosition.page3:
        return "Organize your tasks";
    }
  }

  String getContent() {
    switch (this) {
      case OnboardingPagePosition.page1:
        return "You can easily manage all of your daily tasks in DoMe for free";
      case OnboardingPagePosition.page2:
        return "In Uptodo you can create your personalized routine to stay productive";
      case OnboardingPagePosition.page3:
        return "You can organize your daily tasks by adding your tasks into separate categories";
    }
  }

  int getIndicator() {
    switch (this) {
      case OnboardingPagePosition.page1:
        return 0;
      case OnboardingPagePosition.page2:
        return 1;
      case OnboardingPagePosition.page3:
        return 2;
    }
  }
}
