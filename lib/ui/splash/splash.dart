import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/image/splash_icon.png",
                width: 80,
                height: 95,
                fit: BoxFit.contain,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  "UpToDo",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
