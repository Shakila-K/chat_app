import 'package:flutter/material.dart';


// Dark theme color data
final ThemeData darkTheme = ThemeData.dark().copyWith(

);

// Light theme color data
final ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.black54
);

// Theme Provider with the toggle theme function

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = lightTheme;

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() {
    _currentTheme = _currentTheme == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }
}

// Define Screen Width and Screen Height

class ScreenSize {
  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}