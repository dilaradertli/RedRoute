import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

const colors = {
  "primary": Color.fromARGB(255, 200, 20, 7),
  "onPrimary": Color.fromARGB(255, 255, 255, 255),
  "secondary": Color.fromARGB(255, 255, 254, 254),
  "onSecondary": Color.fromARGB(255, 74, 160, 241),
  "surface": Color.fromARGB(255, 255, 255, 255),
  "onSurface": Color.fromARGB(255, 51, 52, 67),
  "success": Colors.green,
  "error": Colors.red,
  "onError": Colors.white,
};

const darkColors = {
  "primary": Color.fromARGB(255, 126, 0, 0),
  "onPrimary": Color.fromARGB(255, 241, 241, 241),
  "secondary": Color.fromARGB(255, 0, 0, 0),
  "onSecondary": Color.fromARGB(255, 241, 241, 241),
  "surface": Color.fromARGB(255, 26, 37, 48),
  "onSurface": Color.fromARGB(255, 245, 245, 245),
  "success": Colors.green,
  "error": Colors.red,
  "onError": Colors.white,
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: colors["primary"]!,
    onPrimary: colors["onPrimary"]!,
    secondary: colors["secondary"]!,
    onSecondary: colors["onSecondary"]!,
    error: colors["error"]!,
    onError: colors["onError"]!,
    surface: colors["surface"]!,
    onSurface: colors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.lora(),
    bodyMedium: GoogleFonts.lora(),
    bodyLarge: GoogleFonts.lora(),
    labelSmall: GoogleFonts.lora(),
    labelMedium: GoogleFonts.lora(),
    labelLarge: GoogleFonts.lora(),
    titleSmall: GoogleFonts.lora(),
    titleMedium: GoogleFonts.lora(),
    titleLarge: GoogleFonts.lora(),
    headlineSmall: GoogleFonts.lora(),
    headlineMedium: GoogleFonts.lora(),
    headlineLarge: GoogleFonts.lora(),
    displaySmall: GoogleFonts.playfairDisplay(),
    displayMedium: GoogleFonts.playfairDisplay(),
    displayLarge: GoogleFonts.playfairDisplay(),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.lora(),
    bodyMedium: GoogleFonts.lora(),
    bodyLarge: GoogleFonts.lora(),
    labelSmall: GoogleFonts.lora(),
    labelMedium: GoogleFonts.lora(),
    labelLarge: GoogleFonts.lora(),
    titleSmall: GoogleFonts.lora(),
    titleMedium: GoogleFonts.lora(),
    titleLarge: GoogleFonts.lora(),
    headlineSmall: GoogleFonts.lora(),
    headlineMedium: GoogleFonts.lora(),
    headlineLarge: GoogleFonts.lora(),
    displaySmall: GoogleFonts.playfairDisplay(),
    displayMedium: GoogleFonts.playfairDisplay(),
    displayLarge: GoogleFonts.playfairDisplay(),
  ),
);
