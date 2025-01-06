import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w700, 
      color: Colors.grey.shade700, 
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w700, 
      color: Colors.grey.shade700, 
    ),
    headlineLarge: TextStyle(
      fontWeight: FontWeight.w700,
      color: Colors.grey.shade700, 
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w700, 
      color: Colors.grey.shade700,
    ),

  ),

  
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200, 
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade300, 
    onPrimary: Colors.white, 
    onSurface: Colors.grey.shade700, 
    onBackground: Colors.grey.shade400, 
    background: Colors.white, 
  ),
  scaffoldBackgroundColor: Colors.white, 
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade500, 
    foregroundColor: Colors.white, 
    
  ),
);
