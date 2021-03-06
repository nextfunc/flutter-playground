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
      home: ModalBottomSheetDemo(),
    );
  }
}

class ModalBottomSheetDemo extends StatelessWidget {
  static const String routeName = '/material/modal-bottom-sheet';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: const Text('Modal bottom sheet')),
        body: new Center(
            child: new RaisedButton(
                child: const Text('SHOW BOTTOM SHEET'),
                onPressed: () {
                  showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return new Container(
                            color: Colors.transparent,
                            height: 300.0,
                            child: new Text(
                                'This is the modal bottom sheet. Click anywhere to dismiss.',
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 24.0),
                            )
                        );
                      });
                })));
  }
}
