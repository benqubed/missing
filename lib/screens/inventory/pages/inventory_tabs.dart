import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/screens/inventory/pages/screens/features.dart';
import 'package:missing/screens/inventory/pages/screens/info.dart';
import 'package:missing/screens/inventory/pages/screens/issues.dart';

class InventoryTabs extends StatelessWidget {
  const InventoryTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Inventory'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_list),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Info",
              ),
              Tab(
                text: "Features",
              ),
              Tab(
                text: "Issues",
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          dragStartBehavior: DragStartBehavior.down,
          children: [
            InfoScreen(),
            FeaturesScreen(),
            IssuesScreen(),
          ],
        ),
      ),
    );
  }
}
