import 'package:flutter/material.dart';
import 'package:missing/screens/trade_in/data/constants.dart';

class DamageHistory extends StatefulWidget {
  static Route route() => MaterialPageRoute<void>(builder: (_) => DamageHistory());
  DamageHistory({Key? key}) : super(key: key);

  @override
  State<DamageHistory> createState() => _DamageHistoryState();
}

class _DamageHistoryState extends State<DamageHistory> {
  final List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Damages'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tap on card to view full damage details",
              style: TextStyle(fontSize: 20, color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: Text(
                      "Vehicle Exterior",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imageAsset),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(bottom: 180, child: Text('Damage History:')),
                  Positioned(
                      bottom: 180,
                      child: SingleChildScrollView(
                        child: Container(
                          child: _buildPanel(),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle: const Text('To delete this panel, tap the trash can icon'),
              trailing: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

// stores ExpansionPanel state information
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}
