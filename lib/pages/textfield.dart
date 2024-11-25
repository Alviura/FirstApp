// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  // text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  // A variabe
  String greatMessage = "";
  void greatUser() {
    String userName = myController.text;
    setState(() {
      greatMessage = ('Hello, ' + userName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // textfield
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type your name..',
                ),
              ),

              // button
              ElevatedButton(
                onPressed: greatUser,
                child: Text('Tap'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
