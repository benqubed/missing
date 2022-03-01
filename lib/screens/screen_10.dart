import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import "package:collection/collection.dart";
import 'package:missing/widgets/calendar_widget.dart';

class ScreenTen extends StatefulWidget {
  const ScreenTen({Key? key}) : super(key: key);

  @override
  _ScreenTenState createState() => _ScreenTenState();
}

class _ScreenTenState extends State<ScreenTen> {
  List<WorkerItem> workers = [
    const WorkerItem(
      name: "Jane Roberts",
      type: "Sales",
      day: "Mon July 9",
      time: "3:00p - 11:00p",
      title: "New Car Sales",
    ),
    const WorkerItem(
      name: "Jane Roberts",
      type: "Sales",
      day: "Mon July 9",
      time: "3:00p - 11:00p",
      title: "New Car Sales",
    ),
    const WorkerItem(
      name: "Jane Roberts",
      type: "Sales",
      day: "Mon July 9",
      time: "3:00p - 11:00p",
      title: "New Car Sales",
    ),
    const WorkerItem(
      name: "Jane Roberts",
      type: "Sales",
      day: "Mon July 9",
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
        elevation: 1,
        title: const Text('My Schedule'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Please Select Date you would like to Work",
              style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          CalendarWidget(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Eligible Co-Workers to Trade With:",
              style: theme.textTheme.bodyText2!.copyWith(),
            ),
          ),
          ...workers
        ],
      ),
    );
  }
}

class WorkerItem extends StatefulWidget {
  final String name;
  final String type;
  final String day;
  final String time;
  final String title;

  const WorkerItem({
    Key? key,
    required this.name,
    required this.type,
    required this.day,
    required this.time,
    required this.title,
  }) : super(key: key);

  @override
  State<WorkerItem> createState() => _WorkerItemState();
}

class _WorkerItemState extends State<WorkerItem> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    bool isSaved = false;
    return Container(
      color: constants.whiteColor,
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      '${widget.name} - ${widget.type}',
                      style: theme.textTheme.bodyText2!.copyWith(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${widget.day} - ${widget.time}',
                    style: theme.textTheme.bodyText2!.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.title,
                    style: theme.textTheme.bodyText2!.copyWith(color: Colors.grey, fontWeight: FontWeight.normal),
                  ),
                ],
              )),
              const SizedBox(
                width: 10.0,
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      isSaved = !isSaved;
                      // activateBtn();
                    });
                  },
                  child: isSaved
                      ? Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: theme.primaryColor,
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
                            ),
                          ),
                        )),
            ],
          ),
          Divider(
            color: constants.dividerColor,
            height: 10.0,
          )
        ],
      ),
    );
  }
}
