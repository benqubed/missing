import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class CustomOutlinedButton extends StatelessWidget {
  final String title;
  final VoidCallback customFunction;

  const CustomOutlinedButton({Key? key, required this.title, required this.customFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: customFunction,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Theme.of(context).primaryColor),
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(
          constants.whiteColor,
        ),
        side: MaterialStateProperty.all(BorderSide(
          color: Theme.of(context).primaryColor,
          width: 2.0,
        )),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
