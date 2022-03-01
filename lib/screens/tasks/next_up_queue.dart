import 'package:flutter/material.dart';
import 'package:missing/icons/custom_icons_icons.dart';
import 'package:missing/widgets/task/sales_person.dart';

class NextUpList extends StatefulWidget {
  const NextUpList({Key? key}) : super(key: key);

  @override
  _NextUpListState createState() => _NextUpListState();
}

class _NextUpListState extends State<NextUpList> {
  List<PersonFile> people = [
    PersonFile(
      name: "Alvin Testco",
      position: 1,
      isUp: true,
      isNext: false,
    ),
    PersonFile(
      name: "Carol Sullivan",
      position: 2,
      isUp: false,
      isNext: true,
    ),
    PersonFile(
      name: "Marilyn Ross",
      position: 3,
      isUp: false,
      isNext: false,
    ),
    PersonFile(
      name: "Fionna Wade",
      position: 4,
      isUp: false,
      isNext: false,
    ),
    PersonFile(
      name: "Brandon Gilbert",
      position: 5,
      isUp: false,
      isNext: false,
    ),
    PersonFile(
      name: "Timothy Lee",
      position: 6,
      isUp: false,
      isNext: false,
    ),
    PersonFile(
      name: "Brandon Gilbert",
      position: 7,
      isUp: false,
      isNext: false,
    ),
    PersonFile(
      name: "Timothy Lee",
      position: 8,
      isUp: false,
      isNext: false,
    ),
    PersonFile(
      name: "Joe Ramirez",
      position: 9,
      isUp: false,
      isNext: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: Text(
            'Next UP Queue - New',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                CustomIcons.search,
                color: theme.primaryColor,
              ),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) => people[index],
        ));
  }
}
