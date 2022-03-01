import 'package:flutter/material.dart';
import 'package:missing/screens/clock_in/home.dart';
import 'package:missing/screens/clock_in/qr_code.dart';
import 'package:missing/screens/clock_in/time_sheet.dart';
import 'package:missing/screens/clock_in/timer.dart';
import 'package:missing/screens/clock_in/timer_shifts.dart';
import 'package:missing/screens/guest_history/home.dart';
import 'package:missing/screens/guest_history/in_progress.dart';

class GuestHistoryHomePage extends StatelessWidget {
  const GuestHistoryHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ListMenu> routes = [
      ListMenu(
          number: "1",
          title: "In Progress",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GuestHistory(),
              ),
            );
          }),
      ListMenu(
          number: "2",
          title: "Closed",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const InProgress(),
              ),
            );
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clock-in Page"),
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
