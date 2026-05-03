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
      children: const [
        SketchSectionTitle('Create Post'),
        SizedBox(height: 4),
        TextField(
          maxLines: 8,
          decoration: InputDecoration(hintText: 'What\'s happening on campus?'),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.add_photo_alternate_outlined, size: 18),
            SizedBox(width: 6),
            Text('+ Add Image'),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Text('Category: Academics'),
            SizedBox(width: 6),
            Icon(Icons.keyboard_arrow_down_rounded, size: 18),
          ],
        ),
        SizedBox(height: 8),
        SwitchListTile(
          value: true,
          onChanged: _noop,
          title: Text('Post anonymously'),
          contentPadding: EdgeInsets.zero,
        ),
        SizedBox(height: 8),
        SketchButton(label: 'Post'),
      ],
    );
  }

  static void _noop(bool _) {}
}
