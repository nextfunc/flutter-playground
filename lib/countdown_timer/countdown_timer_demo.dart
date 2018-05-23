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
  final stepInSeconds = 2;
  int currentNumber = 0;

  CountdownTimerPageState() {
    setupCountdownTimer();
  }

  setupCountdownTimer() {
    CountdownTimer countDownTimer = new CountdownTimer(
        new Duration(seconds: timeOutInSeconds),
        new Duration(seconds: stepInSeconds));

    var sub = countDownTimer.listen(null);
    sub.onData((duration) {
      currentNumber += stepInSeconds;

      this.onTimerTick(currentNumber);
      print('Your message here: $currentNumber');
    });

    sub.onDone(() {
      print("I'm done");

      sub.cancel();
    });
  }

  void onTimerTick(int currentNumber) {
    setState(() {
      currentNumber = currentNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    final number = timeOutInSeconds - currentNumber;
    return new Scaffold(
      body: new Center(
          child: new Text(
        "Your message here: $number",
        style: new TextStyle(color: Colors.red, fontSize: 25.0),
      )),
    );
  }
}
