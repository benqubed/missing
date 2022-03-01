import 'package:flutter/material.dart';
import 'package:missing/screens/auth/login.dart';
import 'package:missing/screens/clock_in/screens.dart';
import 'package:missing/screens/deals/deals_screen.dart';
import 'package:missing/screens/guest_history/home.dart';
import 'package:missing/screens/guest_history/screens.dart';
import 'package:missing/screens/inventory/screens.dart';
import 'package:missing/screens/live_view/live_view.dart';
import 'package:missing/screens/mobile_stories/screens.dart';
import 'package:missing/screens/schedule/screens.dart';
import 'package:missing/screens/screen_1.dart';
import 'package:missing/screens/schedule/screen_10.dart';
import 'package:missing/screens/trade_in/screen_11.dart';
import 'package:missing/screens/trade_in/screen_12.dart';
import 'package:missing/screens/screen_13.dart';
import 'package:missing/screens/schedule/screen_14.dart';
import 'package:missing/screens/screen_2.dart';
import 'package:missing/screens/inventory/screen_3.dart';
import 'package:missing/screens/screen_4.dart';
import 'package:missing/screens/screen_5.dart';
import 'package:missing/screens/screen_6.dart';
import 'package:missing/screens/screen_7.dart';
import 'package:missing/screens/screen_8.dart';
import 'package:missing/screens/screen_9.dart';
import 'package:missing/screens/tasks/screens.dart';
import 'package:missing/screens/trade_in/screens.dart';
import 'package:missing/theme/themes.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      themeMode: ThemeMode.system,
      theme: AppThemes.lightTheme,
    ));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ListMenu> routes = [
      ListMenu(
          number: "1",
          title: "Auth Screen",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          }),
      ListMenu(
          number: "2",
          title: "Welcome Screen",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenOne(),
              ),
            );
          }),
      ListMenu(
          number: "3",
          title: "Clock In",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ClockInHomePage(),
              ),
            );
          }),
      ListMenu(
          number: "3.2",
          title: "Deals Screen",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DealsScreen(),
              ),
            );
          }),
      ListMenu(
          number: "4",
          title: "Guest History",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GuestHistoryHomePage(),
              ),
            );
          }),
      ListMenu(
          number: "5",
          title: "Inventory",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const InventoryHomePage(),
              ),
            );
          }),
      ListMenu(
          number: "6",
          title: "Live View",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LiveViewScreen(),
              ),
            );
          }),
      ListMenu(
          number: "7",
          title: "Schedule",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScheduleHomePage(),
              ),
            );
          }),
      ListMenu(
          number: "8",
          title: "Tasks",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TasksHomePage(),
              ),
            );
          }),
      ListMenu(
          number: "9",
          title: "Trade In",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TradeInHomePage(),
              ),
            );
          }),
      ListMenu(
          number: "10",
          title: "Screen 10 (Trade Questionaire)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenThirteen(),
              ),
            );
          }),
      ListMenu(
          number: "11",
          title: "Screen 11 (Verification)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenTwo(),
              ),
            );
          }),
      ListMenu(
          number: "12",
          title: "Screen 12 (Credit Inquiry)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFour(),
              ),
            );
          }),
      ListMenu(
          number: "13",
          title: "Screen 13 (Compliance)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFive(),
              ),
            );
          }),
      ListMenu(
          number: "14",
          title: "Screen 14 (Search Co-Borrower)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenSeven(),
              ),
            );
          }),
      ListMenu(
          number: "15",
          title: "Screen 15 (Notification Settings)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenEight(),
              ),
            );
          }),
      ListMenu(
          number: "16",
          title: "Screen 16 (Payment Options)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenNine(),
              ),
            );
          }),
      ListMenu(
          number: "17",
          title: "Screen 17 (Mobile Stories)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MobileStoriesHomePage(),
              ),
            );
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Starter Page"),
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
