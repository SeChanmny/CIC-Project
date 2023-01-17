import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class CountDown extends StatefulWidget {
  const CountDown({super.key});

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  bool iszero = false;
  var controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Down'),
      ),
      body: iszero
          ? Container(
              width: 100,
              height: 100,
              color: Colors.red,
            )
          : CircularCountDownTimer(
              duration: 3,
              initialDuration: 0,
              controller: CountDownController(),
              width: MediaQuery.of(context).size.width / 2,
              height: 100,
              ringColor: Colors.grey[300]!,
              ringGradient: null,
              fillColor: Colors.purpleAccent[100]!,
              fillGradient: null,
              backgroundColor: Colors.purple[500],
              backgroundGradient: null,
              strokeWidth: 20.0,
              strokeCap: StrokeCap.round,
              textStyle: const TextStyle(
                  fontSize: 33.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textFormat: CountdownTextFormat.S,
              isReverse: true,
              isReverseAnimation: true,
              isTimerTextShown: true,
              // autoStart: true,
              onStart: () {
                debugPrint('Countdown Started');
              },
              onComplete: () {
                debugPrint('Countdown Ended');
              },
              onChange: (String timeStamp) {
                debugPrint('Countdown Changed $timeStamp');
              },
              timeFormatterFunction: (defaultFormatterFunction, duration) {
                if (duration.inSeconds == 0) {
                  // iszero = false;
                  // controller.pause();

                  iszero = true;

                  Future.delayed(
                    const Duration(
                      milliseconds: 200,
                    ),
                    () {
                      setState(() {});
                    },
                  );

                  // return "Start";
                } else {
                  return Function.apply(defaultFormatterFunction, [duration]);
                }
              },
            ),
    );
  }
}
