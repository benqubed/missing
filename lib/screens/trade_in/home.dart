import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:missing/screens/trade_in/data/constants.dart';
import 'package:missing/screens/trade_in/preview_screen.dart';

class TradeInScreen extends StatelessWidget {
  // static Route route() => MaterialPageRoute<void>(builder: (_) => TradeInScreen());
  const TradeInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
              "Add Damage",
              style: theme.textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Tap on edit icon to record new damage",
              style: theme.textTheme.bodyText1!.copyWith(),
            ),
            const SizedBox(
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
                      style: theme.textTheme.bodyText1!.copyWith(color: Colors.grey.shade400),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const PreviewScreen()));
                            },
                            icon: Icon(
                              Icons.edit,
                              size: 28,
                              color: Colors.grey[700],
                            ))),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imageAsset),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
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
