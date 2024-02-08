import 'package:flutter/material.dart';


// Dark theme color data
final ThemeData darkTheme = ThemeData.dark().copyWith(
  
);

// Light theme color data
final ThemeData lightTheme = ThemeData.light().copyWith(

  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 240, 240, 241),
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
  ),

  scaffoldBackgroundColor: const Color.fromARGB(255, 240, 240, 241),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color.fromARGB(255, 240, 240, 241),
    selectedItemColor: Color.fromARGB(255, 7, 104, 247),
    unselectedItemColor: Colors.black,
    showUnselectedLabels: true,
  ),
  
  canvasColor: Colors.white,
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