import 'package:campus_pal/screens/email_verification_screen.dart';
import 'package:campus_pal/services/auth_service.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});
  static const route = '/login-signup';

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  final _collegeController = TextEditingController();
  final _emailController = TextEditingController();
  bool _isLoading = false;
  String? _error;

  @override
  void dispose() {
    _collegeController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    final collegeName = _collegeController.text.trim();
    final email = _emailController.text.trim();

    if (collegeName.isEmpty) {
      setState(() => _error = 'Please enter your college name.');
      return;
    }

    if (email.isEmpty) {
      setState(() => _error = 'Please enter your college email.');
      return;
    }

    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      await AuthService.instance.sendLoginOtp(
        email: email,
        collegeName: collegeName,
      );

      if (!mounted) {
        return;
      }

      Navigator.pushNamed(
        context,
        EmailVerificationScreen.route,
        arguments: {'email': email, 'collegeName': collegeName},
      );
    } catch (error) {
      setState(() => _error = error.toString().replaceFirst('Exception: ', ''));
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Login / Signup',
      children: [
        Text('Welcome back', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 12),
        TextField(
          controller: _collegeController,
          decoration: const InputDecoration(
            labelText: 'College Name',
            hintText: 'e.g., Hindustan University',
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'College Email',
            hintText: 'name@college.edu',
          ),
        ),
        const SizedBox(height: 12),
        SketchButton(
          label: _isLoading ? 'Please wait...' : 'Send OTP',
          onTap: _isLoading ? null : _handleLogin,
        ),
        if (_error != null) ...[
          const SizedBox(height: 10),
          Text(_error!, style: const TextStyle(color: Colors.red)),
        ],
        const SizedBox(height: 12),
        const Center(child: Text('You will be signed in after OTP verification.')),
      ],
    );
  }
}
