import 'package:campus_pal/screens/privacy_preferences_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({super.key});
  static const route = '/interests';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Interests',
      children: [
        const Text(
          'Select your interests',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 12),
        const Wrap(
          children: [
            SketchChip(label: 'Coding', selected: true),
            SketchChip(label: 'Music', selected: true),
            SketchChip(label: 'Sports'),
            SketchChip(label: 'Gaming'),
            SketchChip(label: 'Movies'),
            SketchChip(label: 'Design'),
          ],
        ),
        const SizedBox(height: 14),
        SketchButton(
          label: 'Continue',
          onTap: () =>
              Navigator.pushNamed(context, PrivacyPreferencesScreen.route),
        ),
      ],
    );
  }
}
