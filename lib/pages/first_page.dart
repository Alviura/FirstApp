import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('First Page'),
          ),
          body: Center(
            child: ElevatedButton(
                child: const Text('Go to second page'),
                onPressed: () {
                  // Navigate to second page

                  // context - Tells the navigator where the currrent widget resides in the widget tree
                  // MaterilPageRoute - Creates a route that transitions to the desired page
                  // builder - A function that returns the new widget(desired page) to display

                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage(),),);
                  Navigator.pushNamed(context, '/secondpage');
                }),
          )),
    );
  }
}
