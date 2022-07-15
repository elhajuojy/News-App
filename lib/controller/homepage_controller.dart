import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newapp_/view/screens/business_screen.dart';
import 'package:newapp_/view/screens/science_screen.dart';
import 'package:newapp_/view/screens/sports_screen.dart';
import 'package:newapp_/view/settings/settings_screen.dart';

class HomePageController extends GetxController {
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.business), label: "Business"),
    const BottomNavigationBarItem(icon: Icon(Icons.sports), label: "Sports"),
    const BottomNavigationBarItem(icon: Icon(Icons.science), label: "Science"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: "Settings"),
  ];
  List<Widget> listScreens = [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
    const SettingsScreen(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    update();
  }
}
