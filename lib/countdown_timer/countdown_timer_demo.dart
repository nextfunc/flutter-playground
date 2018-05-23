import 'package:flutter/material.dart';
import 'package:quiver/async.dart';

void main() {
  runApp(new MaterialApp(home: new CountdownTimerPage()));
}

class CountdownTimerPage extends StatefulWidget {
  @override
  CountdownTimerPageState createState() => new CountdownTimerPageState();
}

class CountdownTimerPageState extends State<CountdownTimerPage> {
  final timeOutInSeconds = 10;
  final stepInSeconds = 1;
  int numberOfMessage = 0;

  CountdownTimerPageState() {
    setupCountdownTimer();
  }

  setupCountdownTimer() {
    CountdownTimer countDownTimer = new CountdownTimer(
        new Duration(seconds: timeOutInSeconds),
        new Duration(seconds: stepInSeconds));

    var sub = countDownTimer.listen(null);
    sub.onData((duration) {
      numberOfMessage++;

      this.onTimerTick(numberOfMessage);
      print('Your message here: $numberOfMessage');
    });

    sub.onDone(() {
      print("I'm done");

      sub.cancel();
    });
  }

  void onTimerTick(int numberOfMessage) {
    setState(() {
      numberOfMessage = numberOfMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
          child: new Text(
            "Your message here: $numberOfMessage",
            style: new TextStyle(color: Colors.red, fontSize: 25.0),
          )),
    );
  }
}