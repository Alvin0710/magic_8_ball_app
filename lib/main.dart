import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    void rollTheBall() {
      ballNumber = Random().nextInt(5) + 1;
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Ask Me Anything"),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              rollTheBall();
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
