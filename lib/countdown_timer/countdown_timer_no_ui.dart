import 'package:quiver/async.dart';

void main() {
  const timeOutInSeconds = 10;
  const stepInSeconds = 1;
  int numberOfMessage = 0;

  CountdownTimer countDownTimer = new CountdownTimer(
      new Duration(seconds: timeOutInSeconds),
      new Duration(seconds: stepInSeconds)
  );

  var sub = countDownTimer.listen(null);
  sub.onData((duration) {
    numberOfMessage++;
    print('Your message here: $numberOfMessage');
  });

  sub.onDone(() {
    print("I'm done");

    sub.cancel();
  });
}