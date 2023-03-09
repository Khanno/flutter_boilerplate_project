import 'package:flutter/material.dart';

ThemeData customThemeData() {
  return ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF272C99),
      onPrimary: Color(0xFF9A9DD7),
      primaryContainer: Color(0xFF7FD7EF),
      onPrimaryContainer: Colors.white,
      secondary: Color(0xFF272C99),
      onSecondary: Color(0xFF9A9DD7),
      error: Color(0xFFFF4848),
      onError: Color(0xFF4B4B4B),
      background: Color(0xFFFFFFFF),
      onBackground: Color(0xFF4B4B4B),
      surface: Color(0xFFF5F5F5),
      onSurface: Color(0xFF808080),
    ),
    primaryColor: const Color(0xFF7FD7EF),
  );
}
