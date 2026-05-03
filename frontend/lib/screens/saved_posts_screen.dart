import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class SavedPostsScreen extends StatelessWidget {
  const SavedPostsScreen({super.key});
  static const route = '/saved-posts';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Saved Posts',
      showBottomNav: true,
      children: [
        SketchSectionTitle('Saved Posts'),
        SizedBox(height: 2),
        SketchPostCard(
          author: 'Anonymous | 8h',
          body: 'Best resources to prepare for coding interviews?',
        ),
        SizedBox(height: 8),
        SketchCard(child: Text('Empty state: No saved posts')),
      ],
    );
  }
}
