// ignore_for_file: prefer_const_constructors

/* 

WIDGETS -> Everything in flutter is a widget
The pre-built widgets in flutter that we can use are
  Scaffold widget -> To create the basic material design visual layout structure
  Text widget -> To create text
  Button widget -> To create buttons
  Row widget -> To deal with diff layouts in a row
  Column widget -> To deal with diff layouts in a column
Widgets have properties that define how different element behave and look in the screen
Widgets are classes

S Y N T A X
widgetName(
  property: Widget()/value,
  property2: value2,
  property3: value3)

  S T A T E L E S S    W I D G E T S
  The state of the widget cannot change over time, the data can't change when it is initialized


  S T A T E F U L      W I D G E T S
  The state of widget can change over time

  I M A G E   &   A S S E T S
  Two types of image
  1. Network image
  2. Asset image


  C O N T A I N E R   W I D G E T
  A versitile layout widget that is often used for styling and positioning other widgets.
  It acts as a box model, allowing you to customize its shape, color, alignment, margins, padding and more


*/

import 'package:flutter/material.dart'; // contains all necessary tools, packages, modules needed for the app

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.deepPurple[200],
          appBar: AppBar(),
          body: Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                // Curve the corners
                borderRadius: BorderRadius.circular(23),
              ),
              padding: EdgeInsets.all(25),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 64,
              ),
            ),
          ),
        ));
  }
}
