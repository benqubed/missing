import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/widgets/custom_button.dart';

class Four extends StatefulWidget {
  const Four({Key? key}) : super(key: key);

  @override
  _FourState createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Drive"),
        elevation: 1,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.help))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              "In Progress",
              style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold, color: Colors.lightBlue),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "00:10:52",
              style: theme.textTheme.headline3!.copyWith(color: constants.greyColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "SOS Call",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: constants.whiteColor),
                ),
              ),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).errorColor,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            CustomButton(
              title: "Complete Test Drive",
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
  final Color color;

  const OutlinedBtn({Key? key, required this.title, required this.linkTo, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: constants.whiteColor),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
    );
  }
}
