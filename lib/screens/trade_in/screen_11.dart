import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class ScreenEleven extends StatefulWidget {
  const ScreenEleven({Key? key}) : super(key: key);

  @override
  _ScreenElevenState createState() => _ScreenElevenState();
}

class _ScreenElevenState extends State<ScreenEleven> {
  List<DetailItem> detailItems = [
    const DetailItem(
      position: 1,
      vehiclePart: "Passenger Side Bumper",
      damage: "Dent",
      repairCost: 350,
    ),
    const DetailItem(
      position: 2,
      vehiclePart: "Passenger Side Bumper",
      damage: "Dent",
      repairCost: 350,
    ),
    const DetailItem(
      position: 3,
      vehiclePart: "Passenger Side Bumper",
      damage: "Dent",
      repairCost: 350,
    ),
    const DetailItem(
      position: 4,
      vehiclePart: "Passenger Side Bumper",
      damage: "Dent",
      repairCost: 350,
    ),
    const DetailItem(
      position: 23,
      vehiclePart: "Passenger Side Bumper",
      damage: "Dent",
      repairCost: 350,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Trade Appraisal'),
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
          children: [
            Text(
              "Aug 25, 2023",
              style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "John Smith",
              style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Divider(
              color: constants.dividerColor,
            ),
            ...detailItems
          ],
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  final int position;
  final String vehiclePart;
  final String damage;
  final double repairCost;

  const DetailItem({
    Key? key,
    required this.position,
    required this.vehiclePart,
    required this.damage,
    required this.repairCost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipOval(
              child: Container(
                height: 35,
                width: 35,
                color: constants.goldColor,
                child: Center(
                  child: Text(
                    '$position',
                    style: theme.textTheme.caption!.copyWith(
                      color: constants.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vehiclePart,
                    style: theme.textTheme.bodyText1!.copyWith(color: constants.lightColor),
                  ),
                  Text(
                    "$damage | Repair \$$repairCost",
                    style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
        Divider(
          color: constants.dividerColor,
          height: 10.0,
        ),
      ],
    );
  }
}
