import 'package:flutter/material.dart';
import 'package:missing/widgets/optitem.dart';

class StepOne extends StatefulWidget {
  const StepOne({Key? key}) : super(key: key);

  @override
  _StepOneState createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
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
      child: ListView(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "How many keys are available?",
              style: theme.textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Number of Keys',
                hintText: '3',
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Accidents?",
              style: theme.textTheme.bodyText2!.copyWith(),
            ),
            ..._widgetWrapThree(_optItems),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Hail Damage?",
              style: theme.textTheme.bodyText2!.copyWith(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ..._widgetWrapThree(_optItems),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Know Damage?",
              style: theme.textTheme.bodyText2!.copyWith(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ..._widgetWrapThree(_optItems),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Know problems with vehicle?",
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
        ],
      ),
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
