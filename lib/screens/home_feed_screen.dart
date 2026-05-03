import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class HomeFeedScreen extends StatelessWidget {
  const HomeFeedScreen({super.key});
  static const route = '/home-feed';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'IIT Madras',
      showFab: true,
      showBottomNav: true,
      children: [
        Wrap(
          children: [
            SketchChip(label: 'All', selected: true),
            SketchChip(label: 'Memes'),
            SketchChip(label: 'Academics'),
            SketchChip(label: 'Events'),
            SketchChip(label: 'Help'),
          ],
        ),
        SizedBox(height: 10),
        SketchPostCard(
          author: 'Anonymous | ECE | 1h',
          body: 'Where is today\'s robotics club meeting?',
        ),
        SizedBox(height: 10),
        SketchPostCard(
          author: 'Riya | CSE | 4h',
          body: 'Hostel hackathon this weekend. Team up?',
        ),
        SizedBox(height: 10),
        SketchPostCard(
          author: 'Dev | Civil | 8h',
          body: 'Open discussion tonight: tips for internship shortlisting.',
        ),
      ],
    );
  }
}
