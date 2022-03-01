import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:missing/constants.dart' as constants;

class TimeSheetSummary extends StatefulWidget {
  const TimeSheetSummary({Key? key}) : super(key: key);

  @override
  State<TimeSheetSummary> createState() => _TimeSheetSummaryState();
}

class _TimeSheetSummaryState extends State<TimeSheetSummary> {
  List _items = [];
  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/json/clock_in_data.json');
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
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Time Sheet Summary",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Apr 19 - 26',
                style: theme.textTheme.headline6!.copyWith(),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(child: _sheetBuilder())
            ],
          ),
        ));
  }

  _sheetBuilder() {
    return ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _shiftComponent(_items[index]['date'], _items[index]['regular'], _items[index]['over'], _items[index]['double'], _items[index]['breaks'], _items[index]['total']);
        });
  }

  _shiftComponent(String date, String rT, String oT, String dT, String bT, String tT) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Divider(
              color: constants.dividerColor,
              thickness: 1.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [_shiftPeriods('Regular', rT), _shiftPeriods('Over', oT), _shiftPeriods('Double', dT), _shiftPeriods('Breaks', bT), _shiftPeriods('Total', tT)],
            )
          ],
        ),
      ),
    );
  }

  _shiftPeriods(String type, String time) {
    return Column(
      children: [
        Text(
          type,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 10),
        Text(
          time,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
