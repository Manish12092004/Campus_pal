import 'dart:async';

import 'package:campus_pal/screens/onboarding_one_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const route = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      if (!mounted) {
        return;
      }
      Navigator.of(context).pushReplacementNamed(OnboardingOneScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Splash',
      children: [
        SizedBox(height: 80),
        CircleAvatar(radius: 52, child: Icon(Icons.school_rounded, size: 52)),
        SizedBox(height: 16),
        Center(
          child: Text(
            'CampusPal',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 8),
        Center(child: Text('Connecting your campus')),
        SizedBox(height: 16),
        LinearProgressIndicator(minHeight: 6),
      ],
    );
  }
}
