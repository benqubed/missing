import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class StepEight extends StatefulWidget {
  const StepEight({Key? key}) : super(key: key);

  @override
  _StepEightState createState() => _StepEightState();
}

class _StepEightState extends State<StepEight> {
  final List<OptItem> _optItems = [
    const OptItem(
      title: "Front - Driver",
      imagePath: "assets/images/tire.png",
    ),
    const OptItem(
      title: "Front - Passenger",
      imagePath: "assets/images/tire.png",
    ),
    const OptItem(
      title: "Rear - Driver",
      imagePath: "assets/images/tire.png",
    ),
    const OptItem(
      title: "Rear - Passenger",
      imagePath: "assets/images/tire.png",
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
        Center(
          child: Text(
            "Tires",
            style: theme.textTheme.headline6!.copyWith(
              color: constants.lightColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            "Select an option below to evaluate tires",
            style: theme.textTheme.bodyText2!.copyWith(
              color: constants.blackFaded,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        ..._widgetWrap(_optItems),
        const SizedBox(
          height: 80.0,
        ),
      ]),
    );
  }

  List<Widget> _widgetWrap(_props) {
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

class OptItem extends StatefulWidget {
  final String title;
  final String imagePath;
  const OptItem({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  _OptItemState createState() => _OptItemState();
}

class _OptItemState extends State<OptItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            widget.title,
            style: theme.textTheme.bodyText2!.copyWith(color: constants.lightColor),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: isSelected ? constants.dividerColor : Colors.white,
              border: Border.all(
                color: constants.dividerColor,
              ),
              borderRadius: BorderRadius.circular(
                5.0,
              ),
            ),
            child: Center(
              child: Image(
                image: AssetImage(widget.imagePath),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
