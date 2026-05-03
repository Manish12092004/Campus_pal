import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class HelpReportScreen extends StatelessWidget {
  const HelpReportScreen({super.key});
  static const route = '/help-report';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Help & Report',
      showBottomNav: true,
      children: [
        TextField(
          maxLines: 5,
          decoration: InputDecoration(
            labelText: 'Report issue',
            hintText: 'Describe the issue...',
          ),
        ),
        SizedBox(height: 10),
        Text(
          'FAQ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 8),
        Text('1. How to post anonymously?'),
        Text('2. How to report abuse?'),
        SizedBox(height: 8),
        Text('Contact support: support@campuspal.app'),
      ],
    );
  }
}
