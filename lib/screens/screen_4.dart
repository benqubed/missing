import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:missing/tabs/hard_inquiry.dart';
import 'package:missing/tabs/soft_inquiry.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Credit Inquiry'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Hard Inquiry",
              ),
              Tab(
                text: "Soft Inquiry",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          dragStartBehavior: DragStartBehavior.down,
          children: [
            HardInquiry(),
            SoftInquiry(),
          ],
        ),
      ),
    );
  }
}
