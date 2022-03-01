import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/icons/custom_icons_icons.dart';
import 'package:missing/screens/tasks/new_task.dart';
import 'package:missing/widgets/task/task.dart';

class MyTasks extends StatefulWidget {
  const MyTasks({Key? key}) : super(key: key);

  @override
  _MyTasksState createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  List<Task> tasks = [
    Task(
      title: "Lead Follow-Up",
      name: "John Daniel",
      date: "Fri, Jan 12",
      time: "3:15 PM",
      isComplete: false,
    ),
    Task(
      title: "Lead Follow-Up",
      name: "John Daniel",
      date: "Fri, Jan 12",
      time: "3:15 PM",
      isComplete: false,
    ),
    Task(
      title: "We Owe-You Owe",
      name: "Greg Johnson",
      date: "Fri, Jan 12",
      time: "3:15 PM",
      isComplete: false,
    ),
    Task(
      title: "Lead Follow-Up",
      name: "John Daniel",
      date: "Fri, Jan 12",
      time: "3:15 PM",
      isComplete: false,
    ),
    Task(
      title: "Lead Follow-Up",
      name: "John Daniel",
      date: "Fri, Jan 12",
      time: "3:15 PM",
      isComplete: false,
    ),
    Task(
      title: "Lead Follow-Up",
      name: "John Daniel",
      date: "Fri, Jan 12",
      time: "3:15 PM",
      isComplete: false,
    ),
    Task(
      title: "Lead Follow-Up",
      name: "John Daniel",
      date: "Fri, Jan 12",
      time: "3:15 PM",
      isComplete: true,
    ),
    Task(
      title: "Lead Follow-Up",
      name: "John Daniel",
      date: "Fri, Jan 12",
      time: "3:15 PM",
      isComplete: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: const Text(
            'Tasks',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CustomIcons.search,
              ),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(10.0),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewTask()));
                  },
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: const Icon(
                        CustomIcons.content_add,
                        color: constants.whiteColor,
                      ),
                      color: theme.primaryColor,
                    ),
                  ),
                  title: Text(
                    "Add Task",
                    style: theme.textTheme.bodyText1!.copyWith(),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade200,
                  thickness: 1.5,
                ),
                ...tasks
              ])),
            )
          ],
        ));
  }
}
