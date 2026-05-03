import 'package:campus_pal/screens/profile_setup_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const route = '/profile';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Own Profile',
      showBottomNav: true,
      children: [
        const Center(
          child: CircleAvatar(radius: 44, child: Icon(Icons.person, size: 40)),
        ),
        const SizedBox(height: 8),
        const Center(
          child: Text(
            'Aarav Menon',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        const Center(child: Text('CSE | 3rd Year')),
        const SizedBox(height: 8),
        const Center(child: Text('Building cool campus projects.')),
        const SizedBox(height: 8),
        const Text('Interests', style: TextStyle(color: Color(0xFF3B82F6))),
        const SizedBox(height: 6),
        const Wrap(
          children: [
            SketchChip(label: 'Coding'),
            SketchChip(label: 'Music'),
            SketchChip(label: 'Gaming'),
          ],
        ),
        const SizedBox(height: 10),
        const SketchPostCard(
          author: 'Aarav | CSE | 1d',
          body: 'Shipped our mini app demo today!',
        ),
        const SizedBox(height: 10),
        SketchButton(
          label: 'Edit Profile',
          onTap: () => Navigator.pushNamed(context, ProfileSetupScreen.route),
        ),
      ],
    );
  }
}
