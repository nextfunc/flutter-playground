// https://stackoverflow.com/questions/50508152/how-to-align-a-columns-child-to-the-bottom

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
        title: new Text("Align Bottom Demo"),
      ),
      body: new Column(children: <Widget>[
        new Text("Text 1"),
        new Text("Text 2"),
        new SizedBox(
          width: 200.0,
          height: 70.0,
          child: new OutlineButton(
              borderSide: BorderSide(width: 8.0),
              child: Text('I am a button'),
              onPressed: (() {})),
        ),
        new Expanded(
            child: new Align(
                alignment: Alignment.bottomCenter,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(Icons.star),
                    new Text("Bottom Text")
                  ],
                )))
      ]),
    );
  }
}
