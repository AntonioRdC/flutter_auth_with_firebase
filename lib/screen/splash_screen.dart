import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:emailsenha/screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'images/logo.png',
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
