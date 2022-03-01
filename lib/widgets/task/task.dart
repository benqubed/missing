import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/screens/tasks/task.dart';

class Task extends StatefulWidget {
  final String title;
  final String name;
  final String date;
  final String time;
  bool isComplete;
  Task({Key? key, required this.title, required this.name, required this.date, required this.time, required this.isComplete}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SingleTask()));
          },
          leading: widget.isComplete
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    child: const Icon(
                      Icons.check,
                      color: constants.whiteColor,
                    ),
                    color: theme.primaryColor,
                  ),
                )
              : Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    border: Border.all(color: theme.primaryColor),
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "${widget.title}: ",
                    ),
                    TextSpan(
                      text: widget.name,
                    ),
                  ],
                  style: widget.isComplete ? theme.textTheme.bodyText1!.copyWith(color: constants.blackFaded, decoration: TextDecoration.lineThrough) : theme.textTheme.bodyText1!.copyWith(color: constants.blackFaded),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.timer,
                    size: 13.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${widget.date}, ",
                        ),
                        TextSpan(
                          text: widget.time,
                        ),
                      ],
                      style: widget.isComplete ? theme.textTheme.caption!.copyWith(color: constants.blackFaded, decoration: TextDecoration.lineThrough) : theme.textTheme.caption!.copyWith(color: constants.blackFaded),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey.shade200,
          thickness: 1.0,
        )
      ],
    );
  }
}
