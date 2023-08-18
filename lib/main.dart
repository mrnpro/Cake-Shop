import 'package:flutter/material.dart';

import 'Screens/HomeScreen/home_screen.dart';
import 'core/Themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cake App',
      theme: MyTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
