import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class CommentsThreadScreen extends StatelessWidget {
  const CommentsThreadScreen({super.key});
  static const route = '/comments-thread';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Comments',
      showBottomNav: true,
      children: [
        const SketchSectionTitle('Comments'),
        const SizedBox(height: 2),
        const SketchCard(
          child: Text('Ravi: Anyone attending the design meetup?  12 likes'),
        ),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.only(left: 18),
          child: SketchCard(
            child: Text('Siya: Yup, 5pm at innovation lab!  5 likes'),
          ),
        ),
        const SizedBox(height: 8),
        const SketchCard(
          child: Text('Neha: Can we create a notes swap thread?  9 likes'),
        ),
        const SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Comment',
            hintText: 'Type your comment...',
          ),
        ),
        const SizedBox(height: 10),
        SketchButton(
          label: 'Post Comment',
          onTap: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
