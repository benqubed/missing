import 'package:flutter/material.dart';
import 'package:missing/screens/schedule/screen_10.dart';
import 'package:missing/screens/schedule/screen_14.dart';
import 'package:missing/screens/schedule/screen_6.dart';

class ScheduleHomePage extends StatelessWidget {
  const ScheduleHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ListMenu> routes = [
      ListMenu(
          number: "1",
          title: "Schedule Screen 1",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenTen(),
              ),
            );
          }),
      ListMenu(
          number: "2",
          title: "Schedule Screen 2",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFourteen(),
              ),
            );
          }),
      ListMenu(
          number: "3",
          title: "Schedule Screen 3",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Six(),
              ),
            );
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule Page"),
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
