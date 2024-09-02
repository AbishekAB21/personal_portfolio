// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = darkmode;

  ThemeProvider() {
    _loadTheme();
  }

  ThemeData get themeData => _themeData;

  bool get isDarkMode => true; // Always return true since only dark mode is used

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
    _saveTheme();
  }

  // Load the saved theme mode from SharedPreferences (if needed)
  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _themeData = darkmode; // Always set to dark mode
    notifyListeners();
  }

  // Save the current theme mode to SharedPreferences (optional, but kept for future use)
  void _saveTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', true); // Always save as dark mode
  }
}
