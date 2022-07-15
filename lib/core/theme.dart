import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData mylightheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 30,
    ),
    // backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.black,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    elevation: 20.0,
  ),
);
ThemeData myDarkTheme = ThemeData(
  scaffoldBackgroundColor: Color.fromARGB(255, 27, 26, 26),
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    backgroundColor: Color.fromARGB(255, 27, 26, 26),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 40,
    ),

    // backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 27, 26, 26),
      systemNavigationBarColor: Colors.white,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    backgroundColor: Color.fromARGB(255, 27, 26, 26),
    unselectedIconTheme:
        IconThemeData(color: Color.fromARGB(255, 214, 211, 211)),
    elevation: 20.0,
  ),
);
