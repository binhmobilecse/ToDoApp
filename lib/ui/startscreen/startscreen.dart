import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onLoginPress;
  final VoidCallback onRegisterPress;

  const StartScreen(
      {super.key, required this.onLoginPress, required this.onRegisterPress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 100, left: 38, right: 38),
          child: Column(
            children: [
              Text(
                "Welcome to UpTodo",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Please login to your account or create a new account to continue",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white.withOpacity(0.67)),
              ),
              const Spacer(),
              _buildControl(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildControl() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              onLoginPress();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff8875FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 20),
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              onRegisterPress();
            },
            child: const Text(
              "CREATE ACCOUNT",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
