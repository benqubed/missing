import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:missing/screens/inventory/pages/screens/modals/new_issue.dart';
import 'package:missing/screens/inventory/widgets/button.dart';

class IssuesScreen extends StatefulWidget {
  IssuesScreen({Key? key}) : super(key: key);

  @override
  State<IssuesScreen> createState() => _IssuesScreenState();
}

class _IssuesScreenState extends State<IssuesScreen> {
  void _showOverlay(BuildContext context) {
    Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => AddIssue()));
  }

  // List _items = [];

  // Future<void> readJson() async {
  //   final String response = await rootBundle.loadString('assets/json/issues.json');
  //   final data = await json.decode(response);
  //   setState(() {
  //     _items = data;
  //   });
  // }

  List<IssuesCard> issuesCards = [const IssuesCard(title: "Dead Battery", customer: "John Smith", date: "March 27", time: "2:30p"), const IssuesCard(title: "Gas Re-Fill", customer: "Jane Doe", date: "March 26", time: "10:42a")];

  // @override
  // void initState() {
  //   super.initState();
  //   readJson();
  // }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final Button _addIssue = Button(title: "Create Issue", onPressed: () => _showOverlay(context), color: theme.primaryColor, elevation: 0);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text(
            "Current/Known Issues",
            style: theme.textTheme.headline6!.copyWith(),
          ),
          const SizedBox(
            height: 10,
          ),
          ...issuesCards,
          const SizedBox(
            height: 100,
          ),
          Center(
            child: _addIssue,
          )
        ],
      ),
    );
  }
}

class IssuesCard extends StatelessWidget {
  final String title;
  final String customer;
  final String date;
  final String time;
  const IssuesCard({Key? key, required this.title, required this.customer, required this.date, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.bodyText1!.copyWith(),
                  ),
                  Text(
                    customer,
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                  Row(
                    children: [
                      Text(
                        date,
                        style: theme.textTheme.bodyText2!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '|',
                        style: theme.textTheme.bodyText2!.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        time,
                        style: theme.textTheme.bodyText2!.copyWith(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.list,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(onTap: () {}, child: Icon(Icons.image, color: Colors.grey.shade800)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
