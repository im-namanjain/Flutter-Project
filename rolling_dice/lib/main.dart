import 'package:flutter/material.dart';
import 'package:rolling_dice/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rolling Dice',
      home: SplashScreen(),
    );
  }
}
