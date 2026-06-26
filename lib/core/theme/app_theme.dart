import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF1E3A8A),
      brightness: Brightness.light,
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,

      primary: Color.fromARGB(255, 241, 43, 53),
      onPrimary: Colors.white,
      primaryContainer: Color(0xFF99060D),
      onPrimaryContainer: Colors.white,

      secondary: Color.fromARGB(255, 226, 132, 132),
      onSecondary: Colors.white,
      secondaryContainer: Color.fromARGB(255, 48, 48, 48),
      onSecondaryContainer: Color(0xFFBDBDBD),

      surface: Color.fromARGB(255, 40, 40, 40),
      onSurface: Colors.white,
      surfaceContainerHighest: Color(0xFF1C1B1B),
      surfaceContainerLow: Color(0xFF0E0E0E),

      error: Color(0xFFCF6679),
      onError: Colors.black,

      outline: Color(0xFF333333),
      onSurfaceVariant: Color(0xFFBDBDBD),
    ),
  );
}
