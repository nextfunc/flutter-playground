///https://stackoverflow.com/questions/50572846/flutter-how-to-implement-checkboxes-with-sticky-headers

import 'package:flutter/material.dart';
import 'package:sticky_header_list/sticky_header_list.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  Map<String, bool> valuesCarsHdr = {
    'Cars': false,
  };
  Map<String, bool> valuesCars = {
    'Car11': false,
    'Car12': false,
    'Car13': false,
    'Car14': false,
    'Car15': false,
    'Car16': false,
    'Car17': false,
    'Car18': false,
    'Car19': false,
    'Car20': false,
    'Car21': false,
  };

  Map<String, bool> valuesHdrHeadlights = {
    'Headlights': false,
  };
  Map<String, bool> valuesHeadlights = {
    'Headlights1': false,
    'Headlights2': false,
    'Headlights3': false,
    'Headlights4': false,
    'Headlights5': false,
    'Headlights6': false,
    'Headlights7': false,
    'Headlights8': false,
    'Headlights9': false,
  };

  @override
  Widget build(BuildContext context) {
    //this.widget.context = context;
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Select Items'),
        ),
        body: new Container(
            child: new StickyList(
          children: <StickyListRow>[
            new HeaderRow(child: _myHeaderCarsRow(1)),
            new RegularRow(child: _myRegularCarsRow()),
            new HeaderRow(child: _myHeaderCarsRow(2)),
            new RegularRow(child: _myRegularCarsRow())
          ],
        )));
  }

  Widget _myHeaderCarsRow(index) {
    return new Row(
      children: <Widget>[new Text("Header $index")],
    );
  }

  Widget _myRegularCarsRow() {
    return new Column(
      children: getRegularWidgets(),
    );
  }

  List<Widget> getRegularWidgets() {
    List<Widget> widgets = valuesCars.keys.map((key) {
      return new CheckboxListTile(
          title: new Text(key),
          value: valuesCars[key],
          onChanged: (bool value) {
            setState(() {
              valuesCarsHdr[key] = value;
            });
          });
    }).toList();

    return widgets;
  }
}
