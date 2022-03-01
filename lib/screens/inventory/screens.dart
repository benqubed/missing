import 'package:flutter/material.dart';
import 'package:missing/screens/clock_in/qr_code.dart';
import 'package:missing/screens/clock_in/time_sheet.dart';
import 'package:missing/screens/clock_in/timer.dart';
import 'package:missing/screens/clock_in/timer_shifts.dart';
import 'package:missing/screens/inventory/homepage.dart';
import 'package:missing/screens/inventory/pages/inventory_tabs.dart';
import 'package:missing/screens/inventory/screen_3.dart';

class InventoryHomePage extends StatelessWidget {
  const InventoryHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ListMenu> routes = [
      ListMenu(
          number: "1",
          title: "Home Screen",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainInventory(),
              ),
            );
          }),
      ListMenu(
          number: "2",
          title: "Tabs",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const InventoryTabs(),
              ),
            );
          }),
      ListMenu(
          number: "3",
          title: "Screen 3",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenThree(),
              ),
            );
          }),
      // ListMenu(
      //     number: "4",
      //     title: "Timer Shifts",
      //     routeFunction: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => const TimerShifts(),
      //         ),
      //       );
      //     }),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory Page"),
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
