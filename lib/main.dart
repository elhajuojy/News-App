import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:newapp_/core/theme_2.dart';
import 'package:newapp_/view/homepage.dart';
import 'package:newapp_/view/news_screen.dart';

import 'core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.dark,
      // darkTheme: ,
      theme: mylightheme,
      home: HomePage(),
    );
  }
}
