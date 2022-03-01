import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/widgets/custom_button.dart';

class StepNine extends StatefulWidget {
  const StepNine({Key? key}) : super(key: key);

  @override
  _StepNineState createState() => _StepNineState();
}

class _StepNineState extends State<StepNine> {
  final List<CheckItem> _checkItemsThread = [
    const CheckItem(
      title: '>8/32" (New)',
    ),
    const CheckItem(
      title: '6/32"',
    ),
    const CheckItem(
      title: '4/32"',
    ),
    const CheckItem(
      title: '2/32" (Bald)',
    ),
  ];

  final List<CheckItem> _checkItemsGeneral = [
    const CheckItem(title: "Side Bulge"),
    const CheckItem(
      title: "Uneven Wear",
    ),
    const CheckItem(title: "Dips in Threads"),
    const CheckItem(
      title: "Other",
    ),
  ];

  final List<OptItem> _optItems = [
    OptItem(
      title: "Photo",
      icon: Icons.camera_alt_outlined,
      customFunction: () {},
    ),
    OptItem(
      title: "Notes",
      icon: Icons.camera_alt_outlined,
      customFunction: () {},
    ),
  ];

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(children: [
        Text(
          "Trade Valuation Driver Side Tire",
          style: theme.textTheme.bodyText1!.copyWith(
            color: constants.lightColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          color: constants.dividerColor,
          height: 50.0,
        ),
        Center(
          child: Text(
            "Thread Depth",
            style: theme.textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        ..._widgetWrap(_checkItemsThread),
        Divider(
          color: constants.dividerColor,
          height: 50.0,
        ),
        Center(
          child: Text(
            "General Condition",
            style: theme.textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        ..._widgetWrap(_checkItemsGeneral),
        const SizedBox(
          height: 20.0,
        ),
        ..._widgetWrap(_optItems),
        const SizedBox(
          height: 20.0,
        ),
        CustomButton(
          title: "Save",
          customFunction: () {},
        ),
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
          margin: const EdgeInsets.only(bottom: 25),
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

class CheckItem extends StatefulWidget {
  final String title;
  const CheckItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _CheckItemState createState() => _CheckItemState();
}

class _CheckItemState extends State<CheckItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isChecked
              ? Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.primaryColor,
                      width: 2.0,
                    ),
                    color: theme.primaryColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ),
                )
              : Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.primaryColor,
                      width: 2.0,
                    ),
                  ),
                ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(
              widget.title,
              style: theme.textTheme.bodyText2!.copyWith(
                color: constants.lightColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OptItem extends StatefulWidget {
  final String title;
  final IconData icon;
  final VoidCallback customFunction;
  const OptItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.customFunction,
  }) : super(key: key);

  @override
  _OptItemState createState() => _OptItemState();
}

class _OptItemState extends State<OptItem> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      onPressed: widget.customFunction,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              widget.icon,
              color: constants.greyColor,
            ),
            Text(
              widget.title,
              style: theme.textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(
          constants.whiteColor,
        ),
        side: MaterialStateProperty.all(BorderSide(
          color: Theme.of(context).primaryColor,
          width: 2.0,
        )),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
