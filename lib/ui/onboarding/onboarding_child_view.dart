import 'package:flutter/material.dart';
import 'package:fluttertodoapp/utils/OnboardingPagePosition.dart';

class OnboardingChildView extends StatelessWidget {
  final OnboardingPagePosition pagePosition;
  final VoidCallback nextAction;
  final VoidCallback backAction;

  const OnboardingChildView({super.key,
    required this.pagePosition,
    required this.nextAction,
    required this.backAction});

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
              _buildIndicators(),
              _buildContent(),
              Spacer(), // Sử dụng Spacer để đẩy nút xuống dưới cùng
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
      pagePosition.getPageImage(),
      height: 271,
      width: 296,
    );
  }

  Widget _buildIndicators() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 27,
            height: 4,
            decoration: BoxDecoration(
                color: pagePosition.getIndicator() == 0
                    ? Colors.white
                    : Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.all(Radius.circular(56))),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: 27,
            height: 4,
            decoration: BoxDecoration(
                color: pagePosition.getIndicator() == 1
                    ? Colors.white
                    : Colors.white.withOpacity(0.7),
                borderRadius: const BorderRadius.all(Radius.circular(56))),
          ),
          Container(
            width: 27,
            height: 4,
            decoration: BoxDecoration(
                color: pagePosition.getIndicator() == 2
                    ? Colors.white
                    : Colors.white.withOpacity(0.7),
                borderRadius: const BorderRadius.all(Radius.circular(56))),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Text(
            pagePosition.getTitle(),
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
          const SizedBox(
            height: 32,
          ),
          Container(
            child: Text(
              pagePosition.getContent(),
              style: TextStyle(
                  color: Colors.white.withOpacity(0.87), fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNextPrevButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 50),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              backAction();
            },
            child: Text(
              "BACK",
              style: TextStyle(
                color: Colors.white.withOpacity(0.44),
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              nextAction();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Text(
              pagePosition.getIndicator() == 2 ? "GET STARTED" : "NEXT",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
