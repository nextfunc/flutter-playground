// https://stackoverflow.com/questions/50438333/flutter-change-height-of-an-outlinebutton

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SizedBox Demo"),
      ),
      body: new Center(
        child: new SizedBox(
          width: 200.0,
          height: 80.0,
          child: new OutlineButton(
              borderSide: BorderSide(width: 4.0),
              child: Text('I am a button'),
              onPressed: (() {})),
        ),
      ),
    );
  }
}
