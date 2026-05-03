import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});
  static const route = '/community';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'IIT Madras Community',
      showBottomNav: true,
      children: [
        Text('24.8k members'),
        SizedBox(height: 6),
        Text('Posts   Events   Topics'),
        SizedBox(height: 8),
        Text('Trending: #placements #fest #hostelfood'),
        SizedBox(height: 10),
        SketchCard(
          child: SizedBox(
            height: 92,
            child: Center(child: Text('Event Card 1')),
          ),
        ),
        SizedBox(height: 8),
        SketchCard(
          child: SizedBox(
            height: 92,
            child: Center(child: Text('Event Card 2')),
          ),
        ),
      ],
    );
  }
}
