import 'package:flutter/material.dart';
import 'package:missing/screens/inventory/widgets/button.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

enum SingingCharacter { interior, exterior }

class _AddNotesState extends State<AddNotes> {
  String dropdownValue = 'Dead Battery';
  SingingCharacter? _character = SingingCharacter.interior;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    final RoundedButton _addPhoto = RoundedButton(
      title: "Cancel",
      colors: Colors.grey,
      callbackFunction: () {
        Navigator.of(context).pop();
      },
    );
    final RoundedButton _saveIssue = RoundedButton(
      title: "Save",
      colors: Theme.of(context).primaryColor,
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
              'Notes',
              style: theme.textTheme.headline6!.copyWith(),
            ),
            const SizedBox(height: 10.0),
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
