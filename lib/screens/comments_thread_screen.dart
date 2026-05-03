import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class CommentsThreadScreen extends StatelessWidget {
  const CommentsThreadScreen({super.key});
  static const route = '/comments-thread';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Comments',
      showBottomNav: true,
      children: [
        SketchSectionTitle('Comments'),
        SizedBox(height: 2),
        SketchCard(
          child: Text('Ravi: Anyone attending the design meetup?  12 likes'),
        ),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.only(left: 18),
          child: SketchCard(
            child: Text('Siya: Yup, 5pm at innovation lab!  5 likes'),
          ),
        ),
        SizedBox(height: 8),
        SketchCard(
          child: Text('Neha: Can we create a notes swap thread?  9 likes'),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            labelText: 'Comment',
            hintText: 'Type your comment...',
          ),
        ),
      ],
    );
  }
}
