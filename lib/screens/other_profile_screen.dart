import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class OtherProfileScreen extends StatelessWidget {
  const OtherProfileScreen({super.key});
  static const route = '/other-profile';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Nidhi Rao',
      showBottomNav: true,
      children: [
        SketchSectionTitle('Other Profile'),
        SizedBox(height: 6),
        Center(
          child: CircleAvatar(
            radius: 44,
            child: Icon(Icons.person_outline, size: 40),
          ),
        ),
        SizedBox(height: 8),
        Center(child: Text('ECE | 2nd Year')),
        SizedBox(height: 10),
        SketchPostCard(
          author: 'Nidhi | ECE | 2h',
          body: 'Anyone up for a signal processing study group?',
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: SketchButton(label: 'Report')),
            SizedBox(width: 12),
            Expanded(child: SketchButton(label: 'Block')),
          ],
        ),
      ],
    );
  }
}
