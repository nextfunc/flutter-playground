import 'package:quiver/async.dart';

void main() {
  const timeOutInSeconds = 10;
  const stepInSeconds = 2;
  int currentNumber = 0;

  CountdownTimer countDownTimer = new CountdownTimer(
      new Duration(seconds: timeOutInSeconds),
      new Duration(seconds: stepInSeconds));

  var sub = countDownTimer.listen(null);
  sub.onData((duration) {
    currentNumber += stepInSeconds;
    int countdownNumber = timeOutInSeconds - currentNumber;
    print('Your message here: $countdownNumber');
  });

  sub.onDone(() {
    print("I'm done");

    sub.cancel();
  });
}
