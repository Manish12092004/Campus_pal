import 'package:campus_pal/screens/home_feed_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class HelpReportScreen extends StatelessWidget {
  const HelpReportScreen({super.key});
  static const route = '/help-report';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Help & Report',
      showBottomNav: true,
      children: [
        const TextField(
          maxLines: 5,
          decoration: InputDecoration(
            labelText: 'Report issue',
            hintText: 'Describe the issue...',
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'FAQ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        const Text('1. How to post anonymously?'),
        const Text('2. How to report abuse?'),
        const SizedBox(height: 8),
        const Text('Contact support: support@campuspal.app'),
        const SizedBox(height: 10),
        SketchButton(
          label: 'Submit Report',
          onTap: () => Navigator.pushReplacementNamed(
            context,
            HomeFeedScreen.route,
          ),
        ),
      ],
    );
  }
}
