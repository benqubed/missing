import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/widgets/dropdown.dart';
import 'package:missing/widgets/optitem.dart';

class StepTwo extends StatefulWidget {
  const StepTwo({Key? key}) : super(key: key);

  @override
  _StepTwoState createState() => _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  final List<OptItem> _optItems = [
    const OptItem(
      title: "Yes",
    ),
    const OptItem(
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
          "Optional Equipment (Sunroof, Nav,Dev,e.t.c.)",
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
          "Seats (Holes, Stains,e.t.c.)?",
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
          "Floorboards (Holes, Stains,e.t.c.)?",
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
          "Headlines (Holes, Stains,e.t.c.)?",
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
          "Overall interior condition",
          style: theme.textTheme.bodyText2!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const CustomDropdown(
          options: [
            '1 - 10',
            '11 - 20',
            '21 - 30',
          ],
        ),
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
