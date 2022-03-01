import 'package:flutter/material.dart';
import 'package:missing/widgets/custom_outlined_button.dart';
// import 'package:mobile_stories/constants.dart' as constants;

class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);

  @override
  _ThreeState createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("John Smith - Test Drive"),
        elevation: 1,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.help))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              "What Next Step Has the Customer Agreed to?",
              style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold, color: Colors.lightBlue),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50.0,
            ),
            CustomOutlinedButton(
              title: "Discuss Numbers",
              customFunction: () {},
            ),
            const SizedBox(
              height: 30.0,
            ),
            CustomOutlinedButton(
              title: "Explore Other Vehicles",
              customFunction: () {},
            ),
            const SizedBox(
              height: 30.0,
            ),
            CustomOutlinedButton(
              title: "Complete Prequalification",
              customFunction: () {},
            ),
            const SizedBox(
              height: 30.0,
            ),
            CustomOutlinedButton(
              title: "Other",
              customFunction: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class OutlinedBtn extends StatelessWidget {
  final String title;
  final VoidCallback linkTo;

  const OutlinedBtn({Key? key, required this.title, required this.linkTo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: linkTo,
      child: Text(title),
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 2.0, color: Theme.of(context).primaryColor),
        shape: const StadiumBorder(),
      ),
    );
  }
}
