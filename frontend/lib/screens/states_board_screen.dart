import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class StatesBoardScreen extends StatelessWidget {
  const StatesBoardScreen({super.key});
  static const route = '/states-board';

  @override
  Widget build(BuildContext context) {
    return const SketchScaffold(
      title: 'Empty & Error States',
      children: [
        SketchSectionTitle('Empty States'),
        SizedBox(height: 6),
        SketchCard(
          child: Row(
            children: [
              Icon(Icons.inbox_outlined),
              SizedBox(width: 8),
              Text('No posts yet'),
            ],
          ),
        ),
        SizedBox(height: 8),
        SketchCard(
          child: Row(
            children: [
              Icon(Icons.chat_bubble_outline_rounded),
              SizedBox(width: 8),
              Text('No comments yet'),
            ],
          ),
        ),
        SizedBox(height: 8),
        SketchCard(
          child: Row(
            children: [
              Icon(Icons.notifications_none_rounded),
              SizedBox(width: 8),
              Text('No notifications'),
            ],
          ),
        ),
        SizedBox(height: 8),
        SketchCard(
          child: Row(
            children: [
              Icon(Icons.search_rounded),
              SizedBox(width: 8),
              Text('No search results'),
            ],
          ),
        ),
        SizedBox(height: 8),
        SketchCard(
          child: Row(
            children: [
              Icon(Icons.bookmark_border_rounded),
              SizedBox(width: 8),
              Text('No saved posts'),
            ],
          ),
        ),
        SizedBox(height: 14),
        Text(
          'Error States',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFFB91C1C),
          ),
        ),
        SizedBox(height: 6),
        SketchCard(
          child: Row(
            children: [
              Icon(Icons.wifi_off_rounded),
              SizedBox(width: 8),
              Text('No internet connection'),
            ],
          ),
        ),
        SizedBox(height: 8),
        SketchCard(
          child: Row(
            children: [
              Icon(Icons.login_rounded),
              SizedBox(width: 8),
              Text('Login failed'),
            ],
          ),
        ),
        SizedBox(height: 8),
        SketchCard(
          child: Row(
            children: [
              Icon(Icons.verified_outlined),
              SizedBox(width: 8),
              Text('Verification failed'),
            ],
          ),
        ),
        SizedBox(height: 8),
        SketchCard(
          child: Row(
            children: [
              Icon(Icons.upload_file_outlined),
              SizedBox(width: 8),
              Text('Upload failed'),
            ],
          ),
        ),
        SizedBox(height: 8),
        SketchCard(
          child: Row(
            children: [
              Icon(Icons.dns_outlined),
              SizedBox(width: 8),
              Text('Server error'),
            ],
          ),
        ),
      ],
    );
  }
}
