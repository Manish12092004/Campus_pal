import 'package:campus_pal/screens/profile_setup_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class JoinConfirmationScreen extends StatelessWidget {
  const JoinConfirmationScreen({super.key});
  static const route = '/join-confirmation';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Join Confirmation',
      children: [
        const Text('Detected College'),
        const SizedBox(height: 8),
        const Text(
          'IIT Madras',
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 10),
        const Text('Welcome to your campus community'),
        const SizedBox(height: 14),
        SketchButton(
          label: 'Continue',
          onTap: () => Navigator.pushNamed(context, ProfileSetupScreen.route),
        ),
      ],
    );
  }
}
