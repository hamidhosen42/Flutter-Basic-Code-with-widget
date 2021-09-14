import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
    builder: (context) => Data(),
    child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  } 
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //final providerdata = Provider.of<Data>(context);
    final  providerdata=Provider.of<Data>(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                providerdata.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
              RaisedButton(
                onPressed: () {
                  providerdata.Increment();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
