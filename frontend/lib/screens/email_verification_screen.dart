import 'package:campus_pal/screens/join_confirmation_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});
  static const route = '/email-verification';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Email Verification',
      children: [
        const Text(
          'Verify your college email',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        const Text(
          'We sent a link to your inbox. Verify to unlock your community.',
        ),
        const SizedBox(height: 14),
        const SketchCard(
          child: SizedBox(
            height: 180,
            child: Center(child: Text('Friendly Illustration')),
          ),
        ),
        const SizedBox(height: 14),
        SketchButton(
          label: 'I have verified',
          onTap: () =>
              Navigator.pushNamed(context, JoinConfirmationScreen.route),
        ),
        const SizedBox(height: 10),
        const Center(child: Text('Resend email')),
      ],
    );
  }
}
