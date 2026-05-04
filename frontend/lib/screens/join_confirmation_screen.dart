import 'package:campus_pal/screens/profile_setup_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class JoinConfirmationScreen extends StatefulWidget {
  const JoinConfirmationScreen({super.key});
  static const route = '/join-confirmation';

  @override
  State<JoinConfirmationScreen> createState() =>
      _JoinConfirmationScreenState();
}

class _JoinConfirmationScreenState extends State<JoinConfirmationScreen> {
  String _collegeName = 'Your College';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is Map<String, dynamic>) {
      _collegeName = args['collegeName'] as String? ?? 'Your College';
    } else if (args is String) {
      _collegeName = args;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Join Confirmation',
      children: [
        const Text('Detected College'),
        const SizedBox(height: 8),
        Text(
          _collegeName,
          style: const TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
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
