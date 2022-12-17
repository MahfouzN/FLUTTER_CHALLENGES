import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numball = 1;
  void change() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ASK ME ANYTHING'),
        ),
        body: Center(
          child: Container(
            child: TextButton(
              onPressed: () {
                setState(() {
                  numball = Random().nextInt(5) + 1;
                  print('image Clique');
                });
              },
              child: Image(
                image: AssetImage('images/ball$numball.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
