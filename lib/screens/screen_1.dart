import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/screens/screen_2.dart';
import 'package:missing/widgets/custom_button.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              "Welcome",
              style: theme.textTheme.headline4!.copyWith(color: constants.goldColor),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "James Johns",
              style: theme.textTheme.headline6!.copyWith(color: theme.primaryColor, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "1UATCLGX",
              style: theme.textTheme.bodyText1!.copyWith(color: constants.blackFaded),
            ),
            const SizedBox(
              height: 100.0,
            ),
            CustomButton(
              title: "Generate QR Code",
              customFunction: () {},
            ),
            const SizedBox(
              height: 25.0,
            ),
            CustomButton(
              title: "Enter Customer Info",
              customFunction: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenTwo(),
                    ));
              },
            ),
            const SizedBox(
              height: 25.0,
            ),
            CustomButton(
              title: "Scan Driver's License",
              customFunction: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Inventory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Customers',
          ),
        ],
      ),
    );
  }
}
