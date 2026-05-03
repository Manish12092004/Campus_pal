import 'package:campus_pal/screens/login_signup_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({super.key});
  static const route = '/onboarding-three';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Onboarding 3',
      children: [
        const SketchCard(
          child: SizedBox(
            height: 220,
            child: Center(child: Text('Verification Illustration')),
          ),
        ),
        const SizedBox(height: 14),
        const Text(
          'Verified students only',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        const Text('Safe conversations with real campus identities.'),
        const SizedBox(height: 12),
        const Text('• • •'),
        const SizedBox(height: 12),
        SketchButton(
          label: 'Get Started',
          onTap: () => Navigator.pushNamed(context, LoginSignupScreen.route),
        ),
      ],
    );
  }
}
