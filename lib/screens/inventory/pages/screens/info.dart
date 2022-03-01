import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:missing/screens/inventory/pages/screens/modals/add_notes.dart';
import 'package:missing/screens/inventory/widgets/button.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  final String loremText = "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident";

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Status:',
                  style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Available',
                  style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text('Spiff:', style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w400)),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '750',
                  style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                const Text('|'),
                const SizedBox(width: 10),
                Text('Aug 23 - Aug 30th', style: theme.textTheme.bodyText2),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // const Text('My Notes:'),
            // const SizedBox(
            //   height: 15,
            // ),
            // _notesContainer(),
            // _actionButtons(context),
            // const SizedBox(
            //   height: 15,
            // ),
            Text('Manager Notes:', style: theme.textTheme.bodyText1),
            const SizedBox(
              height: 15,
            ),
            _notesContainer(context),
            _actionButtons(context),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Button(
                  title: "Add Notes",
                  onPressed: () {
                    showDialog(
                      barrierColor: Colors.black26,
                      context: context,
                      builder: (context) {
                        return const AddNotes();
                      },
                    );
                    // Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => AddNotes()));
                  },
                  color: Theme.of(context).primaryColor,
                  elevation: 0),
            )
          ],
        ),
      ),
    );
  }

  Widget _notesContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Text(
        loremText,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(overflow: TextOverflow.fade),
      ),
    );
  }

  Widget _actionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => AddNotes()));
            },
            icon: const Icon(
              CupertinoIcons.pencil,
              color: Colors.grey,
              size: 28,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.trash,
              color: Colors.grey,
            ))
      ],
    );
  }
}
