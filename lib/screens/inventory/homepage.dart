import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainInventory extends StatefulWidget {
  const MainInventory({Key? key}) : super(key: key);

  @override
  _MainInventoryState createState() => _MainInventoryState();
}

class _MainInventoryState extends State<MainInventory> {
  List _items = [];
  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/json/data.json');
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
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return inventoryCard(_items[index]);
                }),
          ),
        ],
      ),
    );
  }

  Widget inventoryCard(vehicle) {
    return Card(
      elevation: Platform.isIOS ? 0 : 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const InventoryTabs()));
                          },
                          child: Text(
                            '${vehicle['year']} ${vehicle['makeName']} ${vehicle['model']}',
                            style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Text(
                        '${vehicle['spiff']}',
                        style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'VIN: ${vehicle['vin']}',
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Stock # : ${vehicle['vehicleStock']}',
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    vehicle['keysAvailable']
                        ? const SizedBox()
                        : SizedBox(
                            child: vehicle['availableForCustomer']
                                ? ImageIcon(
                                    const AssetImage('assets/images/key.png'),
                                    size: 40,
                                    color: Colors.yellow[800],
                                  )
                                : ImageIcon(
                                    const AssetImage('assets/images/robot.png'),
                                    size: 40,
                                    color: Colors.yellow[800],
                                  ),
                          )
                  ]),
                  Text(
                    'Price : \$${vehicle['price']} | ${vehicle['mileage']} mi',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Color : ${vehicle['exteriorColor']}',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
