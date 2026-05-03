import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static const route = '/search';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Search',
      showBottomNav: true,
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Search posts, users'),
        ),
        SizedBox(height: 10),
        Text('Recent searches'),
        SizedBox(height: 6),
        Wrap(
          children: [
            SketchChip(label: 'hackathon'),
            SketchChip(label: 'robotics'),
            SketchChip(label: 'canteen'),
          ],
        ),
        SizedBox(height: 10),
        SketchSectionTitle('Results'),
        SizedBox(height: 8),
        SketchPostCard(
          author: 'Priya | CSE',
          body: 'Selling used engineering drawing kit.',
        ),
        SizedBox(height: 8),
        SketchCard(child: Text('Empty state: No search results')),
      ],
    );
  }
}
