///https://stackoverflow.com/questions/50580234/flutter-navigation-drawer-hamburger-icon-color-change
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
      theme: ThemeData(buttonColor: Colors.green),
    ));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(),
      appBar: new AppBar(
        title: new Text("Navigation Drawer"),
        iconTheme: new IconThemeData(color: Colors.green),
      ),
    );
  }
}
