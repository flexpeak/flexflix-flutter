import 'package:flutter/material.dart';

ThemeData netflixTheme() {
  return ThemeData(
    primarySwatch: const MaterialColor(
      0xFFB81D24,
      {
        50: Color(0xFFB81D24),
        100: Color(0xFFB81D24),
        200: Color(0xFFB81D24),
        300: Color(0xFFB81D24),
        400: Color(0xFFB81D24),
        500: Color(0xFFB81D24),
        600: Color(0xFFB81D24),
        700: Color(0xFFB81D24),
        800: Color(0xFFB81D24),
        900: Color(0xFFB81D24),
      },
    ),
    primaryColor: const Color(0xFFB81D24),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFFF5F5F1), fontFamily: 'IBM'),
      bodyMedium: TextStyle(color: Color(0xFFF5F5F1), fontFamily: 'IBM'),
    ),
    scaffoldBackgroundColor: const Color(0xFF000000),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color(0xFF221F1F),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.4),
      selectedIconTheme: const IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.white.withOpacity(0.4)),
      selectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 10),
      unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 10),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
