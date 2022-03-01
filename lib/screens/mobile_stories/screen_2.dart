import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/widgets/custom_button.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final List<ExpandedItem> _data = [
      ExpandedItem(
        title: RichText(
          text: TextSpan(
            text: "Customer Reviews ",
            style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                text: "4.0/5",
                style: theme.textTheme.bodyText1!.copyWith(color: constants.greenColor),
              ),
            ],
          ),
        ),
      ),
      ExpandedItem(
        title: RichText(
          text: TextSpan(
            text: "Safety ",
            style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                text: "5/5",
                style: theme.textTheme.bodyText1!.copyWith(color: constants.greenColor),
              ),
            ],
          ),
        ),
      ),
      ExpandedItem(
        title: Text(
          "Selling Feature to Highlight 1",
          style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      ExpandedItem(
        title: Text(
          "Selling Feature to Highlight 2",
          style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      ExpandedItem(
        title: Text(
          "Selling Feature to Highlight 3",
          style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      ExpandedItem(
        title: Text(
          "Selling Feature to Highlight 4",
          style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      ExpandedItem(
        title: Text(
          "Selling Feature to Highlight 5",
          style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vehicle Specs"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.help))],
      ),
      body: ListView(
        children: [
          Container(
              height: 150,
              decoration: BoxDecoration(
                color: constants.dividerColor,
                image: const DecorationImage(image: AssetImage("assets/images/audi.png")),
              )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "2019 Audi Q5 Premium AWD",
                  style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold, color: constants.lightColor),
                ),
                RichText(
                  text: TextSpan(
                    text: "\$19,550 | ",
                    style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.normal),
                    children: const <TextSpan>[
                      TextSpan(
                        text: "JWXt567 | ",
                      ),
                      TextSpan(
                        text: "1",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ..._data,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomButton(
              title: "Start Test Drive",
              customFunction: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ExpandedItem extends StatefulWidget {
  final Widget title;
  const ExpandedItem({Key? key, required this.title}) : super(key: key);

  @override
  _ExpandedItemState createState() => _ExpandedItemState();
}

class _ExpandedItemState extends State<ExpandedItem> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(color: constants.dividerColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: widget.title,
            onTap: () {
              setState(
                () {
                  _isExpanded = !_isExpanded;
                  // _data.removeWhere((Item currentItem) => item == currentItem);
                },
              );
            },
            trailing: _isExpanded
                ? const RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 18.0,
                    ),
                  )
                : const RotatedBox(
                    quarterTurns: 3,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 18.0,
                    ),
                  ),
          ),
          _isExpanded
              ? Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: constants.lightColor,
                          ),
                          Icon(
                            Icons.star,
                            color: constants.lightColor,
                          ),
                          Icon(
                            Icons.star,
                            color: constants.lightColor,
                          ),
                          Icon(
                            Icons.star,
                            color: constants.lightColor,
                          ),
                          Icon(
                            Icons.star_outline,
                            color: constants.lightColor,
                          ),
                        ],
                      ),
                      Text("93% of drivers recommended this car", style: theme.textTheme.bodyText2)
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
