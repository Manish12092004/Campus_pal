import 'package:campus_pal/screens/help_report_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class OtherProfileScreen extends StatelessWidget {
  const OtherProfileScreen({super.key});
  static const route = '/other-profile';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Nidhi Rao',
      showBottomNav: true,
      children: [
        const SketchSectionTitle('Other Profile'),
        const SizedBox(height: 6),
        const Center(
          child: CircleAvatar(
            radius: 44,
            child: Icon(Icons.person_outline, size: 40),
          ),
        ),
        const SizedBox(height: 8),
        const Center(child: Text('ECE | 2nd Year')),
        const SizedBox(height: 10),
        const SketchPostCard(
          author: 'Nidhi | ECE | 2h',
          body: 'Anyone up for a signal processing study group?',
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: SketchButton(
                label: 'Report',
                onTap: () => Navigator.pushNamed(context, HelpReportScreen.route),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: SketchButton(
                label: 'Block',
                onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('User blocked')),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
