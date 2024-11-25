// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Landing Page')),
        drawer: Drawer(
          backgroundColor: Colors.deepPurple,
          child: Column(
            children: [
              // Drawer header placed here
              DrawerHeader(
                  child: Icon(
                Icons.favorite,
                size: 48,
                color: Colors.black,
              )),

              // home page list tile
              ListTile(
                leading: Icon(Icons.home),
                title: Text("H O M E"),
                onTap: () {
                  // go to home page
                  Navigator.pushNamed(context, '/homepage');
                },
              ),
              ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('S E T T I N G S'),
                  onTap: () {
                    // go to setting page
                    Navigator.pushNamed(context, '/settingpage');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
