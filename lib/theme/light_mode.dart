import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300, 
    primary: Colors.grey.shade500, 
    secondary: Colors.grey.shade200, 
    tertiary: Colors.white, 
    inversePrimary: Colors.grey.shade300, 
    onPrimary: Colors.white, 
    onSurface: Colors.grey.shade800, 
    onBackground: Colors.grey.shade800, 
    background: Colors.white, 
  ),
  scaffoldBackgroundColor: Colors.white, 
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade500, 
    foregroundColor: Colors.white, 
    
  ),
);
