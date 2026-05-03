import 'package:campus_pal/screens/email_verification_screen.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});
  static const route = '/login-signup';

  @override
  Widget build(BuildContext context) {
    return SketchScaffold(
      title: 'Login / Signup',
      children: [
        Text('Welcome back', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 12),
        const TextField(
          decoration: InputDecoration(
            labelText: 'College Email',
            hintText: 'name@college.edu',
          ),
        ),
        const SizedBox(height: 10),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: '********',
          ),
        ),
        const SizedBox(height: 6),
        const Align(
          alignment: Alignment.centerRight,
          child: Text('Forgot password?'),
        ),
        const SizedBox(height: 12),
        SketchButton(
          label: 'Login',
          onTap: () =>
              Navigator.pushNamed(context, EmailVerificationScreen.route),
        ),
        const SizedBox(height: 12),
        const Center(child: Text('New here? Sign up')),
      ],
    );
  }
}
