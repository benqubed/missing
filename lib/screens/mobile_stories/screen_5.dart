import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/widgets/custom_button.dart';
import 'package:missing/widgets/custom_outlined_button.dart';

class Five extends StatefulWidget {
  const Five({Key? key}) : super(key: key);

  @override
  _FiveState createState() => _FiveState();
}

class _FiveState extends State<Five> {
  List<ShiftItem> myShifts = [
    const ShiftItem(
      title: "New Car Sales",
      date: "Thursday July 27",
      time: "3:00p - 11:00p",
      location: "1st Floor Blue Wing",
    ),
  ];

  List<ShiftItem> coShifts = [
    const ShiftItem(
      title: "New Car Sales",
      date: "Friday July 28",
      time: "3:00p - 11:00p",
      location: "1st Floor Blue Wing",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: constants.dividerColor,
      appBar: AppBar(
        title: const Text("Appointments"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.help))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              "Shift Trade Summary",
              style: theme.textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Shift You Will Work:",
              style: theme.textTheme.bodyText2!.copyWith(),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: constants.whiteColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [...myShifts],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "Shift You Co-Worker Will Work:",
              style: theme.textTheme.bodyText2!.copyWith(),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: constants.whiteColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [...coShifts],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "Notes/Reason for Request",
              style: theme.textTheme.bodyText2!.copyWith(),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 120.0,
              decoration: BoxDecoration(
                color: constants.whiteColor,
                border: Border.all(color: constants.blackFaded, width: 0.5),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: const InputDecoration.collapsed(hintText: ""),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomOutlinedButton(
                    title: "Cancel",
                    customFunction: () {},
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: CustomButton(
                    title: "Submit",
                    customFunction: () {},
                  ),
                ),
                // Expanded(
                //   child: CustomButton(
                //     title: "Submit Request",
                //     customFunction: () {},
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ShiftItem extends StatelessWidget {
  final String date;
  final String time;
  final String location;
  final String title;

  const ShiftItem({Key? key, required this.title, required this.date, required this.time, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: theme.textTheme.bodyText2!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          time,
          style: theme.textTheme.bodyText2!.copyWith(color: Colors.lightBlue),
        ),
        Text(
          location,
          style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor),
        ),
        Text(
          title,
          style: theme.textTheme.caption!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
