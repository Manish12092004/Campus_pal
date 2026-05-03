import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({super.key});
  static const route = '/post-detail';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Post',
      showBottomNav: true,
      children: [
        SketchPostCard(
          author: 'Arjun | Mech | 3h',
          body: 'Lost my calculator near library. If found, please DM!',
        ),
        SizedBox(height: 10),
        SketchCard(
          child: SizedBox(
            height: 160,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.image_outlined, size: 28),
                  SizedBox(height: 6),
                  Text('Optional Image'),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text('120 likes'),
        SizedBox(height: 10),
        SketchSectionTitle('Comments'),
        SizedBox(height: 4),
        Text('No comments yet'),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            labelText: 'Add comment',
            hintText: 'Write a reply...',
          ),
        ),
      ],
    );
  }
}
