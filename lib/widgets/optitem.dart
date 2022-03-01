import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class OptItem extends StatefulWidget {
  final String title;

  const OptItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<OptItem> createState() => _OptItemState();
}

class _OptItemState extends State<OptItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          widget.title,
          style: isSelected ? Theme.of(context).textTheme.bodyText2!.copyWith(color: constants.whiteColor) : Theme.of(context).textTheme.bodyText1!.copyWith(),
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(
          isSelected ? Theme.of(context).primaryColor : Colors.white,
        ),
        side: MaterialStateProperty.all(BorderSide(
          color: Theme.of(context).primaryColor,
          width: 1.5,
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
