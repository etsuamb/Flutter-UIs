import 'package:flutter/material.dart';
import 'package:splash_screen/onboardingPage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(Splash());
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 17000), () {});
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'Images/MindHub.jpg',
      nextScreen: onboardingScreen(),
      splashTransition: SplashTransition.rotationTransition,
      splashIconSize: 500,
      backgroundColor: Colors.purple.shade100,
    );
  }
}
