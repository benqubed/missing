import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class ClockInHomeScreen extends StatelessWidget {
  const ClockInHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text(
          "Clock-in",
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 100),
        height: 300,
        child: Center(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(color: theme.primaryColor, borderRadius: BorderRadius.circular(60)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.timer_sharp,
                    size: 40,
                    color: constants.whiteColor,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Start",
                    style: theme.textTheme.headline6!.copyWith(color: constants.whiteColor),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
