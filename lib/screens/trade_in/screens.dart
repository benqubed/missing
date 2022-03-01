import 'package:flutter/material.dart';
import 'package:missing/screens/trade_in/damage_history.dart';
import 'package:missing/screens/trade_in/damages.dart';
import 'package:missing/screens/trade_in/home.dart';
import 'package:missing/screens/trade_in/preview_screen.dart';
import 'package:missing/screens/trade_in/screen_11.dart';
import 'package:missing/screens/trade_in/screen_12.dart';

class TradeInHomePage extends StatelessWidget {
  const TradeInHomePage({Key? key}) : super(key: key);

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
                builder: (context) => const TradeInScreen(),
              ),
            );
          }),
      ListMenu(
          number: "2",
          title: "Preview Screen",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PreviewScreen(),
              ),
            );
          }),
      // ListMenu(
      //     number: "3",
      //     title: "Vehicle Damages",
      //     routeFunction: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => VehicleDamages(),
      //         ),
      //       );
      //     }),
      // ListMenu(
      //     number: "4",
      //     title: "Damage History",
      //     routeFunction: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => DamageHistory(),
      //         ),
      //       );
      //     }),
      ListMenu(
          number: "3",
          title: "Trade Appraisal",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenEleven(),
              ),
            );
          }),
      ListMenu(
          number: "4",
          title: "Trade Damage",
          routeFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenTwelve(),
              ),
            );
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trade-in Page"),
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
