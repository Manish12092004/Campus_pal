import 'package:campus_pal/screens/onboarding_three_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({super.key});
  static const route = '/onboarding-two';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Onboarding 2',
      children: [
        const SketchCard(
          child: SizedBox(
            height: 220,
            child: Center(child: Text('Discussion Illustration')),
          ),
        ),
        const SizedBox(height: 14),
        const Text(
          'Discuss anything with your college',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        const Text('Ask questions, share wins, and vent about deadlines.'),
        const SizedBox(height: 12),
        const Text('• • •'),
        const SizedBox(height: 12),
        SketchButton(
          label: 'Next',
          onTap: () =>
              Navigator.pushNamed(context, OnboardingThreeScreen.route),
        ),
      ],
    );
  }
}
