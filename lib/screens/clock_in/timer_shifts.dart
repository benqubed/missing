import 'dart:async';

import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

String twoDigits(int n) => n.toString().padLeft(2, '0');

class TimerShifts extends StatefulWidget {
  const TimerShifts({Key? key}) : super(key: key);

  @override
  _TimerShiftsState createState() => _TimerShiftsState();
}

class _TimerShiftsState extends State<TimerShifts> {
  Duration duration = Duration(seconds: 157);
  Duration regularDuration = Duration(seconds: 538);
  Duration breakDuration = Duration(seconds: 30);
  Duration totalDuration = Duration(seconds: 508);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Shifts Today",
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
              height: 20,
            ),
            Text(
              'Today\'s Total',
              style: theme.textTheme.bodyText1!.copyWith(),
            ),
            const SizedBox(
              height: 10,
            ),
            _shiftComponent(),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const TimeSheetSummary()),
                  // );
                },
                child: Text(
                  "Shifts Timesheet",
                  style: theme.textTheme.headline6!.copyWith(color: constants.whiteColor),
                ),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ),
              ),
            )
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

  _shiftComponent() {
    final regularMinutes = twoDigits(regularDuration.inMinutes.remainder(60));
    final breakMinutes = twoDigits(breakDuration.inMinutes.remainder(60));
    final totalMinutes = twoDigits(totalDuration.inMinutes.remainder(60));

    final regularSeconds = twoDigits(regularDuration.inSeconds.remainder(60));
    final breakSeconds = twoDigits(breakDuration.inSeconds.remainder(60));
    final totalSeconds = twoDigits(totalDuration.inSeconds.remainder(60));

    //final regularHours = twoDigits(regularDuration.inHours);
    //final breakHours = twoDigits(breakDuration.inHours);
    //final totalHours = twoDigits(totalDuration.inHours);

    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Thur Apr 22',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Divider(
            color: constants.dividerColor,
            thickness: 1.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_shiftPeriods('Regular', '$regularMinutes:$regularSeconds'), _shiftPeriods('Over', '00:00'), _shiftPeriods('Double', '00:00'), _shiftPeriods('Breaks', '$breakMinutes:$breakSeconds'), _shiftPeriods('Total', '$totalMinutes:$totalSeconds')],
          )
        ],
      ),
    );
  }

  _shiftPeriods(String type, String time) {
    return Column(
      children: [
        Text(
          type,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 10),
        Text(
          time,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
