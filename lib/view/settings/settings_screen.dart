import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isdisplay = false;
  String textTheme = "Light";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${textTheme}"),
            Switch.adaptive(
              value: isdisplay,
              onChanged: (val) {
                setState(() {
                  isdisplay = isdisplay == true ? false : true;
                  textTheme = isdisplay == true ? "Dark" : "light";
                });
              },
              activeColor: Colors.deepOrange,
            )
          ],
        ),
      ),
    );
  }
}
