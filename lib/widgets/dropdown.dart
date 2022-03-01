import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class CustomDropdown extends StatefulWidget {
  final List<String> options;
  const CustomDropdown({
    Key? key,
    required this.options,
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  var valueChanged;
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: constants.dividerColor,
        ),
        borderRadius: BorderRadius.circular(
          5.0,
        ),
      ),
      child: DropdownButton<String>(
        hint: Text(
          isChanged ? valueChanged : "Select an option",
          style: theme.textTheme.bodyText2!.copyWith(),
        ),
        underline: const SizedBox(),
        iconSize: 35,
        isExpanded: true,
        style: theme.textTheme.bodyText2!.copyWith(),
        items: widget.options.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {
          valueChanged = value;
          setState(() {
            isChanged = true;
          });
        },
        value: valueChanged,
      ),
    );
  }
}
