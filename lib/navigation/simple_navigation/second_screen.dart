import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  int id;

  SecondScreen([this.id]);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Text("This is the passed id: ${this.id}", style: new TextStyle(color: Colors.blue, fontSize: 20.0)),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.navigate_before),
          onPressed: () {
        Navigator.pop(context);
      }),
    );
  }
}
