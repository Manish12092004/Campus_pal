import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const route = '/profile';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Own Profile',
      showBottomNav: true,
      children: [
        Center(
          child: CircleAvatar(radius: 44, child: Icon(Icons.person, size: 40)),
        ),
        SizedBox(height: 8),
        Center(
          child: Text(
            'Aarav Menon',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        Center(child: Text('CSE | 3rd Year')),
        SizedBox(height: 8),
        Center(child: Text('Building cool campus projects.')),
        SizedBox(height: 8),
        Text('Interests', style: TextStyle(color: Color(0xFF3B82F6))),
        SizedBox(height: 6),
        Wrap(
          children: [
            SketchChip(label: 'Coding'),
            SketchChip(label: 'Music'),
            SketchChip(label: 'Gaming'),
          ],
        ),
        SizedBox(height: 10),
        SketchPostCard(
          author: 'Aarav | CSE | 1d',
          body: 'Shipped our mini app demo today!',
        ),
        SizedBox(height: 10),
        SketchButton(label: 'Edit Profile'),
      ],
    );
  }
}
