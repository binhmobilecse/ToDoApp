import 'package:flutter/material.dart';

class OnboardingChildView extends StatelessWidget {
  const OnboardingChildView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildSkipButton(),
              _buildImages(),
              const SizedBox(
                width: 50,
                height: 20,
              ),
              _buildIndicators(),
              _buildContent(),
              _buildNextPrevButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkipButton() {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 15),
      alignment: AlignmentDirectional.centerStart,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "SKIP",
          style: TextStyle(color: Colors.white.withOpacity(0.44), fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildImages() {
    return Image.asset(
      "assets/image/onboarding_1.png",
      height: 271,
      width: 296,
    );
  }

  Widget _buildIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 27,
          height: 4,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(56))),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: 27,
          height: 4,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: const BorderRadius.all(Radius.circular(56))),
        ),
        Container(
          width: 27,
          height: 4,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: const BorderRadius.all(Radius.circular(56))),
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Container();
  }

  Widget _buildNextPrevButton() {
    return Container();
  }
}
