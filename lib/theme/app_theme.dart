import 'package:flutter/material.dart';

class AppTheme {
  static const paper = Color(0xFFF7F4EC);
  static const ink = Color(0xFF2F2A25);
  static const mutedInk = Color(0xFF6B6258);
  static const stroke = Color(0xFF4B453E);
  static const paintBlue = Color(0xFFB7D7FF);
  static const paintPurple = Color(0xFFCDB9FF);
  static const paintGreen = Color(0xFFB8F0D2);

  static ThemeData get lightSketchTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: paper,
      colorScheme: ColorScheme.fromSeed(seedColor: paintBlue, surface: paper),
      appBarTheme: const AppBarTheme(
        backgroundColor: paper,
        foregroundColor: ink,
        elevation: 0,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: ink),
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: ink),
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: ink),
        bodyLarge: TextStyle(fontSize: 16, color: ink),
        bodyMedium: TextStyle(fontSize: 14, color: ink),
        labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: ink),
      ),
      cardTheme: CardThemeData(
        color: const Color(0xFFFFFDF7),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: stroke, width: 2),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFFBF8F0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: stroke, width: 2),
        ),
      ),
    );
  }
}
