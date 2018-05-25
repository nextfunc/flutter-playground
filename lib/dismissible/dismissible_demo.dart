import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DismissibleDemo(),
    );
  }
}

class DismissibleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                  height: 100.0,
                  width: 100.0,
                ),
                left: 0.0,
                top: (MediaQuery.of(context).size.height / 2) - 50),
            new Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                ),
                height: 100.0,
                width: 100.0,
                right: 0.0,
                top: (MediaQuery.of(context).size.height / 2) - 50),
            new Positioned(
              child: Dismissible(
                key: ObjectKey(0),
                direction: DismissDirection.horizontal,
                child: Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              left: (MediaQuery.of(context).size.width / 2) - 60,
              top: (MediaQuery.of(context).size.height / 2) - 60,
            ),
          ],
        ),
      ),
    );
  }
}