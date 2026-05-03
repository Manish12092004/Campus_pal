import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static const route = '/settings';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Settings',
      showBottomNav: true,
      children: [
        ListTile(title: Text('Account')),
        ListTile(title: Text('Privacy')),
        ListTile(title: Text('Notifications')),
        ListTile(title: Text('Help')),
        Divider(),
        ListTile(title: Text('Logout')),
        ListTile(title: Text('Delete account')),
      ],
    );
  }
}
