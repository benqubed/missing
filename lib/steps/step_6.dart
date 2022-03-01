import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/widgets/optitem.dart';

class StepSix extends StatefulWidget {
  const StepSix({Key? key}) : super(key: key);

  @override
  _StepSixState createState() => _StepSixState();
}

class _StepSixState extends State<StepSix> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Center(
        child: Image(
          image: AssetImage("assets/images/inside.webp"),
        ),
      ),
    );
  }
}
