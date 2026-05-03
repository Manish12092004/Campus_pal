import 'package:campus_pal/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SketchScaffold extends StatelessWidget {
  const SketchScaffold({
    super.key,
    required this.title,
    required this.children,
    this.showFab = false,
    this.showBottomNav = false,
  });

  final String title;
  final List<Widget> children;
  final bool showFab;
  final bool showBottomNav;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      floatingActionButton: showFab
          ? FloatingActionButton(
              onPressed: () =>
                  Navigator.pushNamed(context, '/create-post'),
              backgroundColor: AppTheme.paintGreen,
              child: const Icon(Icons.edit_rounded, color: AppTheme.ink),
            )
          : null,
      body: ListView(padding: const EdgeInsets.all(16), children: children),
      bottomNavigationBar: showBottomNav ? const _BottomNav() : null,
    );
  }
}

class SketchCard extends StatelessWidget {
  const SketchCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(12),
  });

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(padding: padding, child: child),
    );
  }
}

class SketchButton extends StatelessWidget {
  const SketchButton({super.key, required this.label, this.onTap});

  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppTheme.stroke, width: 2),
          gradient: const LinearGradient(
            colors: [
              AppTheme.paintBlue,
              AppTheme.paintPurple,
              AppTheme.paintGreen,
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Center(
          child: Text(label, style: Theme.of(context).textTheme.labelLarge),
        ),
      ),
    );
  }
}

class SketchChip extends StatelessWidget {
  const SketchChip({super.key, required this.label, this.selected = false});

  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8, bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppTheme.stroke, width: 2),
        color: selected ? AppTheme.paintPurple : const Color(0xFFEFEBDD),
      ),
      child: Text(label),
    );
  }
}

class SketchPostCard extends StatelessWidget {
  const SketchPostCard({super.key, required this.author, required this.body});

  final String author;
  final String body;

  @override
  Widget build(BuildContext context) {
    return SketchCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(author, style: const TextStyle(color: AppTheme.mutedInk)),
          const SizedBox(height: 8),
          Text(body),
          const SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.favorite_border_rounded, size: 16),
              SizedBox(width: 4),
              Text('42'),
              SizedBox(width: 16),
              Icon(Icons.chat_bubble_outline_rounded, size: 16),
              SizedBox(width: 4),
              Text('18'),
              Spacer(),
              Icon(Icons.share_outlined, size: 16),
              SizedBox(width: 4),
              Text('Share'),
              SizedBox(width: 12),
              Icon(Icons.bookmark_border_rounded, size: 16),
              SizedBox(width: 4),
              Text('Save'),
            ],
          ),
        ],
      ),
    );
  }
}

class SketchSectionTitle extends StatelessWidget {
  const SketchSectionTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
    );
  }
}

class _BottomNav extends StatelessWidget {
  const _BottomNav();

  int _getCurrentIndex(String? currentRoute) {
    switch (currentRoute) {
      case '/home-feed':
        return 0;
      case '/community':
        return 1;
      case '/create-post':
        return 2;
      case '/notifications':
        return 3;
      case '/profile':
        return 4;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;
    final currentIndex = _getCurrentIndex(currentRoute);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppTheme.ink,
      unselectedItemColor: AppTheme.mutedInk,
      onTap: (index) {
        String route;
        switch (index) {
          case 0:
            route = '/home-feed';
            break;
          case 1:
            route = '/community';
            break;
          case 2:
            route = '/create-post';
            break;
          case 3:
            route = '/notifications';
            break;
          case 4:
            route = '/profile';
            break;
          default:
            route = '/home-feed';
        }
        Navigator.pushReplacementNamed(context, route);
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups_rounded),
          label: 'Community',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline_rounded),
          label: 'Create',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_rounded),
          label: 'Alerts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded),
          label: 'Profile',
        ),
      ],
    );
  }
}
