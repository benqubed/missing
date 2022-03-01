import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import "package:collection/collection.dart";
import 'package:missing/screens/mobile_stories/success.dart';
import 'package:missing/widgets/calendar_widget.dart';

class Six extends StatefulWidget {
  const Six({Key? key}) : super(key: key);

  @override
  _SixState createState() => _SixState();
}

class _SixState extends State<Six> {
  List<DateItem> dates = [
    const DateItem(
      date: "17 July",
      day: "Wed",
      time: "3:00p - 11:00p",
      title: "New Car Sales",
    ),
    const DateItem(
      date: "18 July",
      day: "Thur",
      time: "3:00p - 11:00p",
      title: "New Car Sales",
    ),
    const DateItem(
      date: "19 July",
      day: "Sun",
      time: "3:00p - 11:00p",
      title: "New Car Sales",
    ),
    const DateItem(
      date: "22 July",
      day: "Wed",
      time: "3:00p - 11:00p",
      title: "New Car Sales",
    ),
    const DateItem(
      date: "23 July",
      day: "Thu",
      time: "3:00p - 11:00p",
      title: "New Car Sales",
    ),
    const DateItem(
      date: "28 July",
      day: "Tue",
      time: "3:00p - 11:00p",
      title: "New Car Sales",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: constants.dividerColor,
      appBar: AppBar(
        title: const Text("My Schedule"),
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SuccessDialog(),
                ),
              );
            },
            icon: const Icon(Icons.calendar_today),
          ),
        ],
      ),
      body: ListView(
        children: [
          CalendarWidget(),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "July 14 - Aug 4, 2023",
              style: theme.textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...dates
        ],
      ),
    );
  }
}

class DateItem extends StatelessWidget {
  final String date;
  final String day;
  final String time;
  final String title;

  const DateItem({
    Key? key,
    required this.date,
    required this.day,
    required this.time,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        barrierColor: Colors.black.withOpacity(0.8),
        context: context,
        barrierDismissible: true, // user must tap button!
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0.0,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 250,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      leading: Icon(
                        Icons.file_copy,
                        color: theme.primaryColor,
                      ),
                      onTap: () {},
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Call-Off", style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold)),
                          Text("Call-in by 12:48p", style: theme.textTheme.caption!.copyWith(color: Colors.black87)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Icon(
                        Icons.file_copy,
                        color: theme.primaryColor,
                      ),
                      onTap: () {},
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Trade Shift", style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold)),
                          Text("Trade shifts with a co-worker", style: theme.textTheme.caption!.copyWith(color: Colors.black87)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Icon(
                        Icons.file_copy,
                        color: theme.primaryColor,
                      ),
                      onTap: () {},
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Offer-Up Shift", style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold)),
                          Text("Put your shift up for grabs", style: theme.textTheme.caption!.copyWith(color: Colors.black87)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: constants.whiteColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 10.0,
              height: 80,
              decoration: const BoxDecoration(
                color: constants.greenColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor),
                ),
                Text(
                  day,
                  style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor),
                ),
              ],
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    time,
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                  Text(
                    title,
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                _showMyDialog();
              },
              icon: const Icon(Icons.menu),
            )
          ],
        ),
      ),
    );
  }
}
