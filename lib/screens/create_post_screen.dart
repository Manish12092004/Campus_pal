import 'package:campus_pal/screens/home_feed_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});
  static const route = '/create-post';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Create Post',
      showBottomNav: true,
      children: [
        const SketchSectionTitle('Create Post'),
        const SizedBox(height: 4),
        const TextField(
          maxLines: 8,
          decoration: InputDecoration(hintText: 'What\'s happening on campus?'),
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            Icon(Icons.add_photo_alternate_outlined, size: 18),
            SizedBox(width: 6),
            Text('+ Add Image'),
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          children: [
            Text('Category: Academics'),
            SizedBox(width: 6),
            Icon(Icons.keyboard_arrow_down_rounded, size: 18),
          ],
        ),
        const SizedBox(height: 8),
        const SwitchListTile(
          value: true,
          onChanged: _noop,
          title: Text('Post anonymously'),
          contentPadding: EdgeInsets.zero,
        ),
        const SizedBox(height: 8),
        SketchButton(
          label: 'Post',
          onTap: () => Navigator.pushReplacementNamed(context, HomeFeedScreen.route),
        ),
      ],
    );
  }

  static void _noop(bool _) {}
}
