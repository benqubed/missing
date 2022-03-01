import 'package:flutter/material.dart';
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
          title: "Slide 1 (Welcome Page)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenOne(),
              ),
            );
          }),
      ListMenu(
          number: "2",
          title: "Slide 2 (Verification)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenTwo(),
              ),
            );
          }),
      ListMenu(
          number: "3",
          title: "Slide 3 (Inventory)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenThree(),
              ),
            );
          }),
      ListMenu(
          number: "4",
          title: "Screen 4 (Credit Inquiry)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFour(),
              ),
            );
          }),
      ListMenu(
          number: "5",
          title: "Screen 5 (Compliance)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFive(),
              ),
            );
          }),
      ListMenu(
          number: "6",
          title: "Screen 6 (Application)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenSix(),
              ),
            );
          }),
      ListMenu(
          number: "7",
          title: "Screen 7 (Search Co-Borrower)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenSeven(),
              ),
            );
          }),
      ListMenu(
          number: "8",
          title: "Screen 8 (Notification Settings)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenEight(),
              ),
            );
          }),
      ListMenu(
          number: "9",
          title: "Screen 9 (Payment Options)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenNine(),
              ),
            );
          }),
      ListMenu(
          number: "10",
          title: "Screen 10 (My Schedule)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenTen(),
              ),
            );
          }),
      ListMenu(
          number: "11",
          title: "Screen 11 (Trade Appraisal)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenEleven(),
              ),
            );
          }),
      ListMenu(
          number: "12",
          title: "Screen 12 (Trade Damage)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenTwelve(),
              ),
            );
          }),
      ListMenu(
          number: "13",
          title: "Screen 13 (Trade Questionaire)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenThirteen(),
              ),
            );
          }),
      ListMenu(
          number: "14",
          title: "Screen 14 (Offer up Shift)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFourteen(),
              ),
            );
          }),
      ListMenu(
          number: "15",
          title: "Screen 15 (Offer up Shift)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFourteen(),
              ),
            );
          }),
      ListMenu(
          number: "16",
          title: "Screen 16 (Offer up Shift)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFourteen(),
              ),
            );
          }),
      ListMenu(
          number: "17",
          title: "Screen 17 (Offer up Shift)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFourteen(),
              ),
            );
          }),
      ListMenu(
          number: "18",
          title: "Screen 18 (Offer up Shift)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFourteen(),
              ),
            );
          }),
      ListMenu(
          number: "19",
          title: "Screen 19 (Offer up Shift)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFourteen(),
              ),
            );
          }),
      ListMenu(
          number: "20",
          title: "Screen 20 (Offer up Shift)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFourteen(),
              ),
            );
          }),
      ListMenu(
          number: "21",
          title: "Screen 21 (Offer up Shift)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFourteen(),
              ),
            );
          }),
      ListMenu(
          number: "22",
          title: "Screen 22 (Offer up Shift)",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenFourteen(),
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
