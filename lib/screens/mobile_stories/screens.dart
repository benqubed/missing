import 'package:flutter/material.dart';
import 'package:missing/screens/mobile_stories/screen_1.dart';
import 'package:missing/screens/mobile_stories/screen_2.dart';
import 'package:missing/screens/mobile_stories/screen_3.dart';
import 'package:missing/screens/mobile_stories/screen_4.dart';
import 'package:missing/screens/mobile_stories/screen_5.dart';

class MobileStoriesHomePage extends StatelessWidget {
  const MobileStoriesHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ListMenu> routes = [
      ListMenu(
          number: "1",
          title: "Screen 1",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const First(),
              ),
            );
          }),
      ListMenu(
          number: "2",
          title: "Screen 2",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Second(),
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
                builder: (context) => const Three(),
              ),
            );
          }),
      ListMenu(
          number: "4",
          title: "Screen 4",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Four(),
              ),
            );
          }),
      ListMenu(
          number: "5",
          title: "Screen 5",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Five(),
              ),
            );
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Stories Page"),
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
