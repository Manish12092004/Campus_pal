import 'package:campus_pal/screens/home_feed_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class PrivacyPreferencesScreen extends StatelessWidget {
  const PrivacyPreferencesScreen({super.key});
  static const route = '/privacy-preferences';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Privacy & Preferences',
      children: [
        const SwitchListTile(
          value: true,
          onChanged: null,
          title: Text('Post anonymously by default'),
        ),
        const SwitchListTile(
          value: true,
          onChanged: null,
          title: Text('Allow comments'),
        ),
        const SwitchListTile(
          value: true,
          onChanged: null,
          title: Text('Profile visibility: college only'),
        ),
        const SizedBox(height: 10),
        SketchButton(
          label: 'Continue',
          onTap: () =>
              Navigator.pushReplacementNamed(context, HomeFeedScreen.route),
        ),
      ],
    );
  }
}
