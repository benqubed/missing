import 'dart:async';

import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

String twoDigits(int n) => n.toString().padLeft(2, '0');

class ShiftTimer extends StatefulWidget {
  const ShiftTimer({Key? key}) : super(key: key);

  @override
  _ShiftTimerState createState() => _ShiftTimerState();
}

class _ShiftTimerState extends State<ShiftTimer> {
  static const countDownDuration = Duration(minutes: 0);
  Duration duration = Duration();
  Duration breakTimeDuration = Duration();

  Timer? timer;
  Timer? timerBreak;

  bool isCountDown = true;

  Duration regularDuration = Duration();
  Duration breakDuration = Duration();
  Duration totalDuration = Duration();

  @override
  void initState() {
    super.initState();

    startTimer();
    reset();
  }

  void reset() {
    if (isCountDown) {
      setState(() => duration = countDownDuration);
      setState(() => breakTimeDuration = countDownDuration);
    } else {
      setState(() => duration = Duration());
      setState(() => breakTimeDuration = Duration());
    }
  }

  void addBreakTime() {
    final addBreakSeconds = 1;
    setState(() {
      final seconds = breakTimeDuration.inSeconds + addBreakSeconds;
      breakTimeDuration = Duration(seconds: seconds);
    });
  }

  void recordBreak({bool resets = true}) {
    if (resets) {
      reset();
    }
    timerBreak = Timer.periodic(Duration(seconds: 1), (_) => addBreakTime());
  }

  void addTime() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;

      duration = Duration(seconds: seconds);
    });
  }

  void startTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    setState(() => timerBreak?.cancel());

    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void stopTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    setState(() => timer?.cancel());
  }

  void stopShift({bool resets = true}) {
    if (resets) {
      totalDuration = duration + breakTimeDuration;
      regularDuration = duration;
      breakDuration = breakTimeDuration;
      reset();
    }

    setState(() => timerBreak?.cancel());
    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text(
          "Shift Clock",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Clocked-In: Time on Shift',
              style: theme.textTheme.bodyText1!.copyWith(),
            ),
            const SizedBox(
              height: 10,
            ),
            _countdownComponent(),
            const SizedBox(
              height: 50,
            ),
            // Center(child: _startPauseButton()),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Take Lunch Break",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(color: constants.whiteColor),
                  ),
                ),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColor,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //Center(child: _endShiftButton())
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.timer),
                label: Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Text(
                    "Take Lunch Break",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(color: constants.whiteColor),
                  ),
                ),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.red,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _countdownComponent() {
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    final hours = twoDigits(duration.inHours);

    return Container(
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Theme.of(context).primaryColor),
      child: Center(
        child: Text(
          '$hours:$minutes:$seconds',
          style: const TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget _startPauseButton() {
    final bool isRunning = timer == null ? false : timer!.isActive;
    return ElevatedButton(
      onPressed: () {
        if (isRunning) {
          stopTimer(resets: false);
          recordBreak(resets: false);
        } else {
          startTimer(resets: false);
        }
      },
      child: Text(
        isRunning ? 'Take Lunch Break' : 'Resume Shift',
        style: Theme.of(context).textTheme.headline6!.copyWith(color: constants.whiteColor),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
    );
  }

  Widget _endShiftButton() {
    return ElevatedButton.icon(
      onPressed: () {
        // stopShift();
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const TimerShifts()),
        // );
      },
      icon: const Icon(
        Icons.timer,
        color: Colors.white,
        size: 28,
      ),
      label: Text(
        "End Shift",
        style: Theme.of(context).textTheme.headline6!.copyWith(color: constants.whiteColor),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(Colors.red),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
    );
  }
}
