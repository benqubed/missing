import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:missing/screens/guest_history/in_progress.dart';
import 'package:missing/screens/guest_history/seperator.dart';

class GuestHistory extends StatefulWidget {
  GuestHistory({Key? key}) : super(key: key);

  @override
  _GuestHistoryState createState() => _GuestHistoryState();
}

class _GuestHistoryState extends State<GuestHistory> {
  List _processes = [];
  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/json/guest_data.json');
    final data = await json.decode(response);
    setState(() {
      _processes = data;
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guest History'),
        elevation: 1,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const InProgress()));
              },
              iconSize: 40,
              color: Colors.yellow,
              icon: const Icon(Icons.help))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    "Event Date: March 31, 2021",
                    style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Flexible(
                  child: Text("Select Different Event",
                      style: theme.textTheme.caption!.copyWith(
                        color: Colors.blue[700],
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _processes.length,
                  itemBuilder: (context, index) {
                    return _processCard(_processes[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _processCard(history) {
    bool is_spacer = true;
    bool is_done = true;

    if (history["duration"] == "") {
      is_spacer = false;
      is_done = false;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  is_done
                      ? Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(color: Colors.blue.shade50, border: Border.all(color: Theme.of(context).primaryColor), borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            Icons.check,
                            size: 18,
                            color: Theme.of(context).primaryColor,
                          ),
                        )
                      : history["break"]
                          ? Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(color: Theme.of(context).primaryColor, border: Border.all(color: Theme.of(context).primaryColor), borderRadius: BorderRadius.circular(15)),
                            )
                          : Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Theme.of(context).primaryColor), borderRadius: BorderRadius.circular(15)),
                            ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 11.0,
                      top: 8.0,
                    ),
                    child: is_spacer
                        ? Container(
                            height: 90,
                            width: 2,
                            color: Theme.of(context).primaryColor,
                          )
                        : Container(
                            height: 90,
                            width: 2,
                            child: CustomPaint(size: Size(1, double.infinity), painter: DashedLineVerticalPainter()),
                          ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                      RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                            text: "Process ",
                            //style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: history["process"],
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ], style: TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                            text: "Location: ",
                            //style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: history["location"],
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[500]),
                          ),
                        ], style: TextStyle(color: Colors.black, fontSize: 14)),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                            text: "Sale Person: ",
                            //style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: history["sale_person"],
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[500]),
                          ),
                        ], style: TextStyle(color: Colors.black, fontSize: 14)),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                            text: "Date/ Time: ",
                            //style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: history["date_time"],
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[500]),
                          ),
                        ], style: TextStyle(color: Colors.black, fontSize: 14)),
                      ),
                    ]),
                  ),
                  is_done
                      ? Text(history["duration"], style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.green[500], fontWeight: FontWeight.bold))
                      : SizedBox(
                          child: history["closed"] ? Text("In Progress", style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.green[500], fontSize: 16, fontWeight: FontWeight.bold)) : SizedBox(),
                        )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
