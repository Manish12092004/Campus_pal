import 'package:campus_pal/screens/interests_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});
  static const route = '/profile-setup';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Profile Setup',
      children: [
        const Center(
          child: CircleAvatar(
            radius: 42,
            child: Icon(Icons.add_a_photo_rounded),
          ),
        ),
        const SizedBox(height: 12),
        const TextField(decoration: InputDecoration(labelText: 'Name')),
        const SizedBox(height: 10),
        const TextField(decoration: InputDecoration(labelText: 'Department')),
        const SizedBox(height: 10),
        const TextField(decoration: InputDecoration(labelText: 'Year')),
        const SizedBox(height: 10),
        const TextField(decoration: InputDecoration(labelText: 'Bio')),
        const SizedBox(height: 14),
        SketchButton(
          label: 'Continue',
          onTap: () => Navigator.pushNamed(context, InterestsScreen.route),
        ),
      ],
    );
  }
}
