// ignore_for_file: prefer_const_constructors

/* 

WIDGETS -> Everything in futter is a widget 
The pre-built widgets in flutter that we can use are
  Scaffold widget -> To
  Text widget -> To create text
  Button widget -> To create buttons
  Row widget -> To deal with diff layouts in a row
  Collumn widget -> "  "  "    "    "    "   "  column
  image widget -> to deal with images

Widgets have propeties that define how different element behave and look in the screen
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

*/

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp( // the root widget of the application
    home: Home(),
  )); 
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is a title'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      
      body: Center( // centers what is inside the widget
        child: Text(
          'hello ninjas',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],

          )
        ), // the child property is used if a widget happens to be a under that widget
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('Click'),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}