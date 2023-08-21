import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/Onboarding/onboarding_screen.dart';
import 'core/Themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cake App',
      theme: MyTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
