import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:missing/screens/inventory/pages/screens/modals/new_issue.dart';
import 'package:missing/screens/inventory/widgets/button.dart';
import 'package:missing/widgets/custom_button.dart';

class IssuesSecondScreen extends StatefulWidget {
  IssuesSecondScreen({Key? key}) : super(key: key);

  @override
  State<IssuesSecondScreen> createState() => _IssuesSecondScreenState();
}

class _IssuesSecondScreenState extends State<IssuesSecondScreen> {
  void _showOverlay(BuildContext context) {
    Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => AddIssue()));
  }

  List _items = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/json/issues.json');
    final data = await json.decode(response);
    setState(() {
      _items = data;
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    final Button _addIssue = Button(title: "Create Issue", onPressed: () => _showOverlay(context), color: Colors.blue, elevation: 0);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Current/Know Issues",
              style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: _issueCard(_items[index]['title'], _items[index]['customer'], _items[index]['date'], _items[index]['time']),
                    );
                  }),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      title: "Create Issue",
                      customFunction: () => _showOverlay(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _issueCard(String title, String customer, String date, String time) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 90,
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
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 30,
            child: Icon(CupertinoIcons.delete_simple, color: Colors.grey),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.w500),
              ),
              Text(
                customer,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    date,
                    style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '|',
                    style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    time,
                    style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
