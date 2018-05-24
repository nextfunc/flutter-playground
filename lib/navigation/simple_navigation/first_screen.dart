import 'package:flutter/material.dart';
import 'package:flutter_playground/navigation/simple_navigation/second_screen.dart';

void main() {
  runApp(new MaterialApp(home: new FirstScreen()));
}

class FirstScreen extends StatefulWidget {
  @override
  FirstScreenState createState() => new FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Text("This is first screen!", style: new TextStyle(color: Colors.red, fontSize: 20.0),),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.navigate_next),
          onPressed: () {
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => new SecondScreen(5)));
      }),
    );
  }
}
