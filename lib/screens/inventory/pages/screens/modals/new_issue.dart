import 'package:flutter/material.dart';
import 'package:missing/screens/inventory/pages/screens/modals/add_image.dart';
import 'package:missing/screens/inventory/widgets/button.dart';

class AddIssue extends StatefulWidget {
  const AddIssue({Key? key}) : super(key: key);

  @override
  State<AddIssue> createState() => _AddIssueState();
}

enum SingingCharacter { interior, exterior }

class _AddIssueState extends State<AddIssue> {
  String dropdownValue = 'Dead Battery';
  SingingCharacter? _character = SingingCharacter.interior;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    final RoundedButton _addPhoto = RoundedButton(
      title: "Add Photo",
      colors: theme.primaryColor,
      callbackFunction: () {
        Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => AddPhoto()));
      },
    );
    final RoundedButton _saveIssue = RoundedButton(
      title: "Save",
      colors: theme.primaryColor,
      callbackFunction: () {
        Navigator.pop(context);
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.only(top: 10.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.close),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(height: 50.0),
            Text(
              'Location',
              style: theme.textTheme.headline6!.copyWith(),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Radio<SingingCharacter>(
                      fillColor: MaterialStateProperty.all(theme.primaryColor),
                      overlayColor: MaterialStateProperty.all(theme.primaryColor),
                      value: SingingCharacter.interior,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    const Text('Interior'),
                  ],
                ),
                Row(
                  children: [
                    Radio<SingingCharacter>(
                      fillColor: MaterialStateProperty.all(theme.primaryColor),
                      overlayColor: MaterialStateProperty.all(theme.primaryColor),
                      value: SingingCharacter.exterior,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    const Text('Exterior')
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Issue Type',
              style: theme.textTheme.headline6!.copyWith(),
            ),
            const SizedBox(height: 10),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.87,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: DropdownButton<String>(
                  value: dropdownValue,
                  alignment: Alignment.topLeft,
                  icon: Icon(Icons.arrow_drop_down, color: theme.primaryColor),
                  iconSize: 38,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Dead Battery', 'Gas Re-Fill'].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Notes',
              style: theme.textTheme.headline6!.copyWith(),
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.87,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: TextFormField(
                decoration: InputDecoration.collapsed(hintText: ""),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
            const SizedBox(height: 50.0),
            Row(
              children: [Expanded(child: _addPhoto), const SizedBox(width: 20.0), Expanded(child: _saveIssue)],
            )
          ],
        ),
      ),
    );
  }
}
