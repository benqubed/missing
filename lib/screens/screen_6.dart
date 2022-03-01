import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class ScreenSix extends StatefulWidget {
  const ScreenSix({Key? key}) : super(key: key);

  @override
  _ScreenSixState createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Digital Application'),
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
          children: [],
        ),
      ),
    );
  }
}
