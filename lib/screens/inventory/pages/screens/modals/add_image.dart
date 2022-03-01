import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:missing/screens/inventory/widgets/button.dart';

class AddPhoto extends StatelessWidget {
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
        Navigator.of(context).pop();
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
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.camera_alt,
                    color: theme.primaryColor,
                    size: 40,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Camera",
                    style: theme.textTheme.headline6!.copyWith(),
                  ),
                ],
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.image,
                    color: theme.primaryColor,
                    size: 40,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Photo Gallery",
                    style: theme.textTheme.headline6!.copyWith(),
                  ),
                ],
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

  Widget _buildOverlayContent(BuildContext context) {
    final RoundedButton _addPhoto = RoundedButton(
      title: "Cancel",
      colors: Colors.blue,
      callbackFunction: () => Navigator.pop(context),
    );
    final RoundedButton _saveIssue = RoundedButton(
      title: "Save",
      colors: Colors.blue,
      callbackFunction: () {},
    );

    return Stack(children: [
      Positioned(
        right: -23,
        child: MaterialButton(
            onPressed: () => Navigator.pop(context),
            elevation: 0,
            color: Colors.white,
            child: Icon(
              Icons.close,
              size: 35.0,
            ),
            shape: CircleBorder(side: BorderSide(color: Colors.black, width: 2))),
      ),
      Positioned(
        top: 50,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.blue,
                    size: 40,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Camera",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.image,
                    color: Colors.blue,
                    size: 40,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Photo Gallery",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 150),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 140,
                      child: _addPhoto,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 140,
                      child: _saveIssue,
                    ),
                  ],
                ))
          ],
        ),
      ),
    ]);
  }
}
