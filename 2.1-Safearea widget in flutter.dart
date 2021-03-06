import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      //Safearea widget
      home: SafeArea(
        child: Scaffold(
          body: Text(
            "I Love Coding",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
