/* 
Columns & Rows

C O L U M N S
properties
- children: span several child widgets 
- mainAxisAlignment: controls how the child widgets are placed along the y axis,
- crossAxixAlignment: Controls how the child widgets are placed along the x axis
- flex: value, determines how much of the available space a child should occupy relative to other 
children in a flexible parent widget

E X P A N D E D    W I D G E T
Used to make a child widget take up all available space within a flwxible parent
widget such as a Row, Column, or Flex

L I S T V I E W    W I D G E T
Creates a column / row eith infinite space
properties:
scrollDirection: Axis.horizontal(scroll horizontally)
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> names = ['Mitch', 'Alvin', 'Koko'];

  // functions & Methods
  void userTapped() {
    print("User tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: GestureDetector(
        onTap: userTapped,
        child: Container(
          width: 300,
          height: 300,
          color: Colors.deepOrange,
          child: Center(
            child: Text('click me'),
          ),
        ),
      ),
    ));
  }
}
