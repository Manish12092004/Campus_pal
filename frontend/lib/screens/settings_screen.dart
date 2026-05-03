import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static const route = '/settings';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Settings',
      showBottomNav: true,
      children: [
        ListTile(
          title: const Text('Account'),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Account settings')),
          ),
        ),
        ListTile(
          title: const Text('Privacy'),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Privacy settings')),
          ),
        ),
        ListTile(
          title: const Text('Notifications'),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Notification settings')),
          ),
        ),
        ListTile(
          title: const Text('Help'),
          onTap: () => Navigator.pushNamed(context, '/help-report'),
        ),
        const Divider(),
        ListTile(
          title: const Text('Logout'),
          onTap: () => Navigator.pushReplacementNamed(context, '/login-signup'),
        ),
        ListTile(
          title: const Text('Delete account'),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Account deletion initiated')),
          ),
        ),
      ],
    );
  }
}
