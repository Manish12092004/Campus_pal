import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
	ApiService._();

	static final ApiService instance = ApiService._();

	static const String _baseUrl = String.fromEnvironment(
		'BACKEND_BASE_URL',
		defaultValue: 'http://127.0.0.1:8000/api/verify',
	);

	Uri _buildUri(String path) => Uri.parse('$_baseUrl/$path');

	Future<void> sendOtp(String email) async {
		final response = await http.post(
			_buildUri('send-otp/'),
			headers: {'Content-Type': 'application/json'},
			body: jsonEncode({'email': email}),
		);

		if (response.statusCode >= 200 && response.statusCode < 300) {
			return;
		}

		throw Exception(_extractError(response.body, 'Failed to send OTP'));
	}

	Future<void> verifyOtp({required String email, required String otp}) async {
		final response = await http.post(
			_buildUri('verify-otp/'),
			headers: {'Content-Type': 'application/json'},
			body: jsonEncode({'email': email, 'otp': otp}),
		);

		if (response.statusCode >= 200 && response.statusCode < 300) {
			return;
		}

		throw Exception(_extractError(response.body, 'Failed to verify OTP'));
	}

	String _extractError(String body, String fallback) {
		try {
			final decoded = jsonDecode(body);
			if (decoded is Map<String, dynamic>) {
				final error = decoded['error'] ?? decoded['message'];
				if (error is String && error.isNotEmpty) {
					return error;
				}
			}
		} catch (_) {
			// Keep fallback if response body is not JSON.
		}
		return fallback;
	}
}
