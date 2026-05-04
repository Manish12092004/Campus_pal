import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();
  static const List<String> _allowedDomains = ['.edu', '.ac.in', '.edu.in'];
  static const String _hindustanStudentDomain =
      '@student.hindustanuniv.ac.in';

  SupabaseClient get _client => Supabase.instance.client;

  bool _isHindustanCollege(String collegeName) {
    final normalized = collegeName.toLowerCase().trim();
    return normalized == 'hindustan institute of technology and science' ||
        normalized == 'hindustan university';
  }

  Future<bool> _collegeTagExists(String collegeName) async {
    try {
      final response = await _client
          .from('colleges')
          .select('tag')
          .eq('name', collegeName)
          .maybeSingle();
      
      return response != null && response['tag'] != null;
    } catch (e) {
      return false;
    }
  }

  bool isCollegeEmail({required String email, required String collegeName}) {
    final normalized = email.toLowerCase();

    if (_isHindustanCollege(collegeName)) {
      return normalized.endsWith(_hindustanStudentDomain);
    }

    return _allowedDomains.any(normalized.endsWith);
  }

  Future<void> sendLoginOtp({required String email, required String collegeName}) async {
    final tagExists = await _collegeTagExists(collegeName);
    if (!tagExists) {
      throw Exception('Unable to verify. College not found or missing metadata.');
    }

    if (_isHindustanCollege(collegeName)) {
      if (!email.toLowerCase().endsWith(_hindustanStudentDomain)) {
        throw Exception(
          'For Hindustan, use an email ending with $_hindustanStudentDomain.',
        );
      }
    } else if (!isCollegeEmail(email: email, collegeName: collegeName)) {
      throw Exception('Use a valid college email (.edu, .ac.in, .edu.in).');
    }

    await _client.auth.signInWithOtp(email: email, shouldCreateUser: true);
  }

  Future<void> verifyEmailOtp({required String email, required String otp}) async {
    final response = await _client.auth.verifyOTP(
      type: OtpType.email,
      email: email,
      token: otp,
    );

    if (response.session == null) {
      throw Exception('Invalid OTP. Please try again.');
    }
  }

  Future<void> resendLoginOtp({required String email, required String collegeName}) async {
    await sendLoginOtp(email: email, collegeName: collegeName);
  }
}
