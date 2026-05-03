import 'package:campus_pal/screens/comments_thread_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({super.key});
  static const route = '/post-detail';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Post',
      showBottomNav: true,
      children: [
        const SketchPostCard(
          author: 'Arjun | Mech | 3h',
          body: 'Lost my calculator near library. If found, please DM!',
        ),
        const SizedBox(height: 10),
        const SketchCard(
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
        const SizedBox(height: 10),
        const Text('120 likes'),
        const SizedBox(height: 10),
        const SketchSectionTitle('Comments'),
        const SizedBox(height: 4),
        const Text('No comments yet'),
        const SizedBox(height: 8),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Add comment',
            hintText: 'Write a reply...',
          ),
        ),
        const SizedBox(height: 10),
        SketchButton(
          label: 'View All Comments',
          onTap: () => Navigator.pushNamed(context, CommentsThreadScreen.route),
        ),
      ],
    );
  }
}
