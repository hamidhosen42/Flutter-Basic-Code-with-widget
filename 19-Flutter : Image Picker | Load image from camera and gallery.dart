import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
//import 'package:flutter_application_1/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late File _image;

  Future CamraImage() async{
    var image=await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image=image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
              "https://cdn.pixabay.com/photo/2020/01/20/22/21/palace-4781577_1280.jpg"),
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.orange,
            child: _image==null ?Text("No Image"):Image.file(_image),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(onPressed: () {
                CamraImage();
              }, child: Icon(Icons.camera)),
              SizedBox(width: 20), //Icon distence
              FloatingActionButton(
                  onPressed: () {}, child: Icon(Icons.photo_library)),
            ],
          ),
        ],
      ),
    );
  }
}
