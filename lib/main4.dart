// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firstapp/pages/home.dart';
import 'package:firstapp/pages/landing.dart';
import 'package:firstapp/pages/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/landingpage': (context) => Landing(),
        '/homepage': (context) => HomePage(),
        '/settingpage': (context) => SettingPage(),
      },
      home: Landing(),
    );
  }
}
