import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class ScreenTwelve extends StatefulWidget {
  const ScreenTwelve({Key? key}) : super(key: key);

  @override
  _ScreenTwelveState createState() => _ScreenTwelveState();
}

class _ScreenTwelveState extends State<ScreenTwelve> {
  final List<OptItem> _optItems = [
    OptItem(
      title: "Scratch",
      customFunc: () {},
    ),
    OptItem(
      title: "Dent",
      customFunc: () {},
    ),
    OptItem(
      title: "Puncture",
      customFunc: () {},
    ),
    OptItem(
      title: "Missing Part",
      customFunc: () {},
    ),
    OptItem(
      title: "Broken Glass",
      customFunc: () {},
    ),
    OptItem(
      title: "Maintanance",
      customFunc: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Trade Damage'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              "Passenger Side Bumper",
              style: theme.textTheme.bodyText1!.copyWith(color: constants.lightColor),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Type: ",
              style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ..._widgetWrap(_optItems),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Repair Cost: ",
              style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "\$575",
              style: theme.textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Notes: ",
              style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(color: constants.whiteColor, border: Border.all(color: constants.dividerColor), borderRadius: BorderRadius.circular(5)),
              child: TextFormField(
                decoration: const InputDecoration(isCollapsed: true, border: InputBorder.none),
                keyboardType: TextInputType.text,
                style: theme.textTheme.bodyText2!.copyWith(),
                initialValue: "Customer claims they backed into a pole at a fast-food restaurant",
                maxLines: null,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Images: ",
              style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200.0,
              width: 150.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/damage.jpeg"),
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _widgetWrap(_props) {
    List<Widget> widgets = [];

    for (int i = 0; i < _props.length; i += 2) {
      Widget item1 = _props[i];
      Widget item2 = i + 1 >= _props.length ? const SizedBox() : _props[i + 1];
      // Widget item3 = i + 2 >= _props.length ? const SizedBox() : _props[i + 2];
      widgets.add(
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              Expanded(
                child: item1,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: item2,
              ),
              // const SizedBox(
              //   width: 5.0,
              // ),
              // Expanded(
              //   child: item3,
              // ),
            ],
          ),
        ),
      );
    }

    return widgets;
  }
}

class OptItem extends StatelessWidget {
  final String title;
  final VoidCallback customFunc;

  const OptItem({
    Key? key,
    required this.title,
    required this.customFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: customFunc,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(),
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        side: MaterialStateProperty.all(BorderSide(
          color: Theme.of(context).primaryColor,
          width: 1.5,
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
