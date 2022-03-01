import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class ScreenSeven extends StatefulWidget {
  const ScreenSeven({Key? key}) : super(key: key);

  @override
  _ScreenSevenState createState() => _ScreenSevenState();
}

class _ScreenSevenState extends State<ScreenSeven> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ronald Redink'),
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
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: constants.dividerColor), borderRadius: BorderRadius.circular(5)),
              child: TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    hintText: 'Search Co-Borrower',
                    hintStyle: TextStyle(color: constants.greyColor),
                    isCollapsed: true,
                    border: InputBorder.none),
                // decoration: const InputDecoration.collapsed(hintText: "Search here"),
                keyboardType: TextInputType.text,

                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
