import 'package:campus_pal/screens/join_confirmation_screen.dart';
import 'package:campus_pal/services/auth_service.dart';
import 'package:campus_pal/widgets/sketch_widgets.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});
  static const route = '/email-verification';

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final _otpController = TextEditingController();
  bool _isLoading = false;
  String? _error;
  String? _email;
  String? _collegeName;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is Map<String, dynamic>) {
      _email ??= args['email'] as String?;
      _collegeName ??= args['collegeName'] as String?;
    } else {
      _email ??= args as String?;
    }
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  Future<void> _verifyOtp() async {
    final email = _email;
    final otp = _otpController.text.trim();

    if (email == null || email.isEmpty) {
      setState(() => _error = 'Missing email. Please login again.');
      return;
    }

    if (otp.length != 8) {
      setState(() => _error = 'Enter the 8-digit OTP.');
      return;
    }

    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      await AuthService.instance.verifyEmailOtp(email: email, otp: otp);

      if (!mounted) {
        return;
      }

      Navigator.pushNamed(
        context,
        JoinConfirmationScreen.route,
        arguments: {'collegeName': _collegeName},
      );
    } catch (error) {
      setState(() => _error = error.toString().replaceFirst('Exception: ', ''));
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _resendOtp() async {
    final email = _email;
    final collegeName = _collegeName;
    if (email == null || email.isEmpty) {
      setState(() => _error = 'Missing email. Please login again.');
      return;
    }

    if (collegeName == null || collegeName.isEmpty) {
      setState(() => _error = 'Missing college name. Please login again.');
      return;
    }

    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      await AuthService.instance.resendLoginOtp(
        email: email,
        collegeName: collegeName,
      );
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('OTP resent.')));
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
    final email = _email ?? 'your college email';

    return SketchScaffold(
      title: 'Email Verification',
      children: [
        const Text(
          'Verify your college email',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        Text(
          'Enter the OTP sent by email to $email to unlock your community.',
        ),
        const SizedBox(height: 14),
        SketchCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('One-Time Password'),
              const SizedBox(height: 8),
              TextField(
                controller: _otpController,
                keyboardType: TextInputType.number,
                maxLength: 8,
                decoration: const InputDecoration(
                  hintText: 'Enter 8-digit OTP',
                  counterText: '',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        SketchButton(
          label: _isLoading ? 'Please wait...' : 'Verify OTP',
          onTap: _isLoading ? null : _verifyOtp,
        ),
        if (_error != null) ...[
          const SizedBox(height: 10),
          Text(_error!, style: const TextStyle(color: Colors.red)),
        ],
        const SizedBox(height: 10),
        Center(
          child: TextButton(
            onPressed: _isLoading ? null : _resendOtp,
            child: const Text('Resend OTP'),
          ),
        ),
      ],
    );
  }
}
