/* 
 * N A V I G A T I O N    &    R O U T I N G
 * 

*/
import 'package:firstapp/pages/first_page.dart';
import 'package:firstapp/pages/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage(), routes: {
      '/secondpage': (context) => SecondPage(),
    });
  }
}
