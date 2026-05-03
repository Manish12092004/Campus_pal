import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  static const route = '/notifications';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Notifications',
      showBottomNav: true,
      children: [
        SketchSectionTitle('Notifications'),
        SizedBox(height: 2),
        SketchCard(child: Text('Aman liked your post | 2m')),
        SizedBox(height: 8),
        SketchCard(child: Text('Nisha commented on your post | 1h')),
        SizedBox(height: 8),
        SketchCard(child: Text('You were mentioned in #events | 4h')),
        SizedBox(height: 8),
        SketchCard(child: Text('Empty state: No notifications')),
      ],
    );
  }
}
