import 'package:flutter/material.dart';
import 'package:missing/screens/clock_in/qr_code.dart';
import 'package:missing/screens/clock_in/time_sheet.dart';
import 'package:missing/screens/clock_in/timer.dart';
import 'package:missing/screens/clock_in/timer_shifts.dart';
import 'package:missing/screens/tasks/followup_text.dart';
import 'package:missing/screens/tasks/new_task.dart';
import 'package:missing/screens/tasks/next_up_queue.dart';
import 'package:missing/screens/tasks/task.dart';
import 'package:missing/screens/tasks/tasks.dart';
import 'package:missing/screens/tasks/up_history.dart';

class TasksHomePage extends StatelessWidget {
  const TasksHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ListMenu> routes = [
      ListMenu(
          number: "1",
          title: "Tasks Screen",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyTasks(),
              ),
            );
          }),
      ListMenu(
          number: "2",
          title: "Task Screen",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleTask(),
              ),
            );
          }),
      ListMenu(
          number: "3",
          title: "New Task Screen",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NewTask(),
              ),
            );
          }),
      ListMenu(
          number: "4",
          title: "Next Up Queue",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NextUpList(),
              ),
            );
          }),
      ListMenu(
          number: "5",
          title: "UP History",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UpHistory(),
              ),
            );
          }),
      ListMenu(
          number: "6",
          title: "Follow UP",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FollowUpText(),
              ),
            );
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasks Page"),
      ),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (context, index) {
          return routes[index];
        },
      ),
    );
  }
}

class ListMenu extends StatelessWidget {
  final String number;
  final String title;
  final VoidCallback routeFunction;
  const ListMenu({Key? key, required this.number, required this.title, required this.routeFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        ListTile(
          tileColor: Colors.amber.shade300,
          onTap: routeFunction,
          leading: Text(
            number,
            style: theme.textTheme.bodyText2,
          ),
          title: Text(
            title,
            style: theme.textTheme.bodyText2,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
