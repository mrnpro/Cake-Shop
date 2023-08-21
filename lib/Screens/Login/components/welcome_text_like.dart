import 'package:flutter/material.dart';

class WelcomeTexts extends StatelessWidget {
  const WelcomeTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Hey There?", style: TextStyle(fontSize: 20, color: Colors.white)),
        Text("Welcome Back ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ],
    );
  }
}
