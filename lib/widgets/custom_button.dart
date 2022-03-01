import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback customFunction;

  const CustomButton({Key? key, required this.title, required this.customFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: customFunction,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: constants.whiteColor),
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(
          Theme.of(context).primaryColor,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
