import 'package:flutter/material.dart';
import 'package:missing/icons/custom_icons_icons.dart';
import 'package:missing/widgets/live_view/liveview_usercard.dart';

class LiveViewScreen extends StatefulWidget {
  const LiveViewScreen({Key? key}) : super(key: key);

  @override
  _LiveViewScreenState createState() => _LiveViewScreenState();
}

class _LiveViewScreenState extends State<LiveViewScreen> {
  List<LiveViewCard> person = [
    LiveViewCard(
      name: "Carol Sullivan",
      percentage: 65,
      time: "02:45",
      desking: "00:45",
      nextUser: "Juan Carlos",
    ),
    LiveViewCard(
      name: "Carol Sullivan",
      percentage: 65,
      time: "02:45",
      desking: "00:45",
      nextUser: "Juan Carlos",
    ),
    LiveViewCard(
      name: "Carol Sullivan",
      percentage: 65,
      time: "02:45",
      desking: "00:45",
      nextUser: "Juan Carlos",
    ),
    LiveViewCard(
      name: "Carol Sullivan",
      percentage: 65,
      time: "02:45",
      desking: "00:45",
      nextUser: "Juan Carlos",
    ),
    LiveViewCard(
      name: "Carol Sullivan",
      percentage: 65,
      time: "02:45",
      desking: "00:45",
      nextUser: "Juan Carlos",
    ),
    LiveViewCard(
      name: "Carol Sullivan",
      percentage: 65,
      time: "02:45",
      desking: "00:45",
      nextUser: "Juan Carlos",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: const Text('Live View'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CustomIcons.search,
              ),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: person.length,
          itemBuilder: (context, index) => person[index],
        ));
  }
}
