import 'package:flutter/material.dart';
import 'package:missing/widgets/custom_button.dart';
import 'package:missing/constants.dart' as constants;

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  List<ListPoints> listPoints = [
    const ListPoints(date: "Dec 3", time: "00:46", message: "Identity NOT Verified"),
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Alvin Testco'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.warning,
                  color: constants.redColor,
                ),
                const SizedBox(
                  width: 20.0,
                ),
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
                      "Identity Not Verified",
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
                    "This Customer's Identity could not be verified and requires additional reviews",
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.redColor),
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
              height: 80.0,
            ),
            CustomButton(
              title: "Verify Digitally",
              customFunction: () {},
            ),
            const SizedBox(
              height: 25.0,
            ),
            CustomButton(
              title: "Validate SSN Card",
              customFunction: () {},
            ),
            const SizedBox(
              height: 25.0,
            ),
            CustomButton(
              title: "Request Override",
              customFunction: () {},
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
