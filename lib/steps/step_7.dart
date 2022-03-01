import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/widgets/optitem.dart';

class StepSeven extends StatefulWidget {
  const StepSeven({Key? key}) : super(key: key);

  @override
  _StepSevenState createState() => _StepSevenState();
}

class _StepSevenState extends State<StepSeven> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Center(
        child: Image(
          image: AssetImage("assets/images/inside.png"),
        ),
      ),
    );
  }
}
