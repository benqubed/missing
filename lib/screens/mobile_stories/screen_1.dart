import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  List<ListPoints> listPoints = [
    const ListPoints(date: "Dec 3", time: "00:46", message: "Identity NOT Verified"),
    const ListPoints(date: "Dec 12", time: "12:40", message: "Identity NOT Verified"),
    const ListPoints(date: "Jan 14", time: "00:46", message: "Identity Resolution Override Request was approved"),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ronald Redink"),
        elevation: 1,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.help))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.check_box,
                      color: constants.goldColor,
                    )),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Id Verification",
                      style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Identity Resolution Override Request Approved",
                      style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.normal),
                    ),
                  ],
                ))
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(color: constants.dividerColor),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Id Verification",
                    style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "This Customer's Identity Resolution Override Request was approved",
                    style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(color: constants.blueFaded),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [...listPoints],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

class ListPoints extends StatelessWidget {
  final String date;
  final String time;
  final String message;
  const ListPoints({Key? key, required this.date, required this.time, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Container(
            padding: const EdgeInsets.all(6.0),
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: constants.lightColor,
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: "$time - ",
                style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: message,
                    style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
