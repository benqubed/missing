import 'package:flutter/material.dart';
import 'package:missing/widgets/inventory_card.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  List<InventoryCard> listCards = [
    InventoryCard(
      makeName: "Acura",
      year: 2014,
      model: "MDX 3.5L Technology Package",
      vin: "5FJUEU736YDH837243456",
      vehicleStock: 501264,
      price: 73915,
      mileage: 78000,
      exteriorColor: "White",
      available: true,
    ),
    InventoryCard(
      makeName: "Acura",
      year: 2014,
      model: "TSX Sport Wagon",
      vin: "5FJUEU736YDH837243456",
      vehicleStock: 501264,
      price: 73915,
      mileage: 78000,
      exteriorColor: "White",
      available: false,
    ),
    InventoryCard(
      makeName: "BMW",
      year: 2014,
      model: "330",
      vin: "5FJUEU736YDH837243456",
      vehicleStock: 501264,
      price: 73915,
      mileage: 78000,
      exteriorColor: "White",
      available: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Ronald Redink'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [...listCards],
        ),
      ),
    );
  }
}
