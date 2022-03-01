import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:missing/screens/trade_in/damages.dart';
import 'package:missing/screens/trade_in/data/constants.dart';
import 'package:points_layer/points_layer.dart';

class PreviewScreen extends StatelessWidget {
  static Route route() => MaterialPageRoute<void>(builder: (_) => const PreviewScreen());
  const PreviewScreen({Key? key}) : super(key: key);

  Future<List<PointData>> _getPoints() async {
    var jsonData = await rootBundle.loadString('assets/json/points.json');
    return pointDataFromJson(jsonData);
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Damages'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Damage",
              style: theme.textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Double Tap on Damaged Area",
              style: theme.textTheme.bodyText1!.copyWith(),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: FutureBuilder<List<PointData>>(
                    future: _getPoints(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return PointsLayer(
                          imagePath: imageAsset,
                          size: 1.3,
                          points: snapshot.data!,
                          onTap: (id) {
                            var point = snapshot.data!.firstWhere((element) => id == element.id);
                            Navigator.of(context).push(VehicleDamages.route(point));
                          },
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                  // child: Text("Hello World"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
