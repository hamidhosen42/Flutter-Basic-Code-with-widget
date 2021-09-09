import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    //var height=MediaQuery.of(context).size.height;
    //var container_height=height/4;
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              height:MediaQuery.of(context).size.height/4,
              //height:container_height,
              width: MediaQuery.of(context).size.width/3,
              color: Colors.yellow,
            ),
          ),
        ),
      );
  }
}
