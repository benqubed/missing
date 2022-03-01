import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/widgets/optitem.dart';

class StepFive extends StatefulWidget {
  const StepFive({Key? key}) : super(key: key);

  @override
  _StepFiveState createState() => _StepFiveState();
}

class _StepFiveState extends State<StepFive> {
  final List<OptItem> _optItems = [
    OptItem(
      title: "Yes",
    ),
    OptItem(
      title: "No",
    ),
  ];

  var valueChanged;
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(children: [
        Text(
          "How Often Was the Oil Changed?",
          style: theme.textTheme.bodyText2!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: constants.dividerColor,
            ),
            borderRadius: BorderRadius.circular(
              5.0,
            ),
          ),
          child: DropdownButton<String>(
            hint: Text(
              isChanged ? valueChanged : "Select an option",
              style: theme.textTheme.bodyText2!.copyWith(),
            ),
            underline: const SizedBox(),
            iconSize: 35,
            isExpanded: true,
            style: theme.textTheme.bodyText2!.copyWith(),
            items: <String>['Every 3 - 4 Months', 'Every 6 - 7 Months'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              valueChanged = value;
              setState(() {
                isChanged = true;
              });
            },
            value: valueChanged,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Last Time Oil Was Changed (Date or Miles)?",
          style: theme.textTheme.bodyText2!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'MM-DD-YYYY',
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            const Icon(
              Icons.calendar_today,
              size: 40.0,
              color: constants.lightColor,
            ),
            const SizedBox(
              width: 10.0,
            ),
            const Icon(
              Icons.speed_rounded,
              size: 40.0,
              color: constants.blackColor,
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Transimition Slipping?",
          style: theme.textTheme.bodyText2!.copyWith(),
        ),
        const SizedBox(
          height: 10.0,
        ),
        ..._widgetWrapThree(_optItems),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Motor Noise?",
          style: theme.textTheme.bodyText2!.copyWith(),
        ),
        const SizedBox(
          height: 10.0,
        ),
        ..._widgetWrapThree(_optItems),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Warning Lights on Dash?",
          style: theme.textTheme.bodyText2!.copyWith(),
        ),
        const SizedBox(
          height: 10.0,
        ),
        ..._widgetWrapThree(_optItems),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Purchase Extended Warranty at Time of Sale?",
          style: theme.textTheme.bodyText2!.copyWith(),
        ),
        const SizedBox(
          height: 10.0,
        ),
        ..._widgetWrapThree(_optItems),
        const SizedBox(
          height: 80.0,
        ),
      ]),
    );
  }

  List<Widget> _widgetWrapThree(_props) {
    List<Widget> widgets = [];

    for (int i = 0; i < _props.length; i += 2) {
      Widget item1 = _props[i];
      Widget item2 = i + 1 >= _props.length ? const SizedBox() : _props[i + 1];
      widgets.add(
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              Expanded(
                child: item1,
              ),
              const SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: item2,
              ),
            ],
          ),
        ),
      );
    }

    return widgets;
  }
}
