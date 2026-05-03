import 'package:campus_pal/screens/community_screen.dart';
import 'package:campus_pal/screens/comments_thread_screen.dart';
import 'package:campus_pal/screens/create_post_screen.dart';
import 'package:campus_pal/screens/email_verification_screen.dart';
import 'package:campus_pal/screens/help_report_screen.dart';
import 'package:campus_pal/screens/home_feed_screen.dart';
import 'package:campus_pal/screens/interests_screen.dart';
import 'package:campus_pal/screens/join_confirmation_screen.dart';
import 'package:campus_pal/screens/login_signup_screen.dart';
import 'package:campus_pal/screens/notifications_screen.dart';
import 'package:campus_pal/screens/onboarding_one_screen.dart';
import 'package:campus_pal/screens/onboarding_three_screen.dart';
import 'package:campus_pal/screens/onboarding_two_screen.dart';
import 'package:campus_pal/screens/other_profile_screen.dart';
import 'package:campus_pal/screens/post_detail_screen.dart';
import 'package:campus_pal/screens/privacy_preferences_screen.dart';
import 'package:campus_pal/screens/profile_screen.dart';
import 'package:campus_pal/screens/profile_setup_screen.dart';
import 'package:campus_pal/screens/saved_posts_screen.dart';
import 'package:campus_pal/screens/search_screen.dart';
import 'package:campus_pal/screens/settings_screen.dart';
import 'package:campus_pal/screens/splash_screen.dart';
import 'package:campus_pal/screens/states_board_screen.dart';
import 'package:campus_pal/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CampusPalApp());
}

class CampusPalApp extends StatelessWidget {
  const CampusPalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampusPal',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightSketchTheme,
      home: const SplashScreen(),
      routes: {
        SplashScreen.route: (_) => const SplashScreen(),
        OnboardingOneScreen.route: (_) => const OnboardingOneScreen(),
        OnboardingTwoScreen.route: (_) => const OnboardingTwoScreen(),
        OnboardingThreeScreen.route: (_) => const OnboardingThreeScreen(),
        LoginSignupScreen.route: (_) => const LoginSignupScreen(),
        EmailVerificationScreen.route: (_) => const EmailVerificationScreen(),
        JoinConfirmationScreen.route: (_) => const JoinConfirmationScreen(),
        ProfileSetupScreen.route: (_) => const ProfileSetupScreen(),
        InterestsScreen.route: (_) => const InterestsScreen(),
        PrivacyPreferencesScreen.route: (_) => const PrivacyPreferencesScreen(),
        HomeFeedScreen.route: (_) => const HomeFeedScreen(),
        CreatePostScreen.route: (_) => const CreatePostScreen(),
        PostDetailScreen.route: (_) => const PostDetailScreen(),
        CommentsThreadScreen.route: (_) => const CommentsThreadScreen(),
        CommunityScreen.route: (_) => const CommunityScreen(),
        SearchScreen.route: (_) => const SearchScreen(),
        NotificationsScreen.route: (_) => const NotificationsScreen(),
        ProfileScreen.route: (_) => const ProfileScreen(),
        OtherProfileScreen.route: (_) => const OtherProfileScreen(),
        SavedPostsScreen.route: (_) => const SavedPostsScreen(),
        SettingsScreen.route: (_) => const SettingsScreen(),
        HelpReportScreen.route: (_) => const HelpReportScreen(),
        StatesBoardScreen.route: (_) => const StatesBoardScreen(),
      },
    );
  }
}
