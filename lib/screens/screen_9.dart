import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:missing/tabs/deal_desking.dart';
import 'package:missing/tabs/deal_terms.dart';
import 'package:missing/tabs/rec_vehicles.dart';

class ScreenNine extends StatelessWidget {
  const ScreenNine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Payment Options'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Deal Desking",
              ),
              Tab(
                text: "Deal Terms",
              ),
              Tab(
                text: "Rec. Vehicles",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          dragStartBehavior: DragStartBehavior.down,
          children: [
            DealDesking(),
            DealTerms(),
            RecVehicles(),
          ],
        ),
      ),
    );
  }
}
