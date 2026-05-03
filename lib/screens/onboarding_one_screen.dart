import 'package:campus_pal/screens/onboarding_two_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({super.key});
  static const route = '/onboarding-one';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Onboarding 1',
      children: [
        const SketchCard(
          child: SizedBox(
            height: 220,
            child: Center(child: Text('Illustration Area')),
          ),
        ),
        const SizedBox(height: 14),
        const Text(
          'Your campus, in one place',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        const Text(
          'Discover memes, events, and conversations from verified students.',
        ),
        const SizedBox(height: 12),
        const Text('• • •'),
        const SizedBox(height: 12),
        SketchButton(
          label: 'Next',
          onTap: () => Navigator.pushNamed(context, OnboardingTwoScreen.route),
        ),
      ],
    );
  }
}
