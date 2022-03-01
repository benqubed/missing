import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class DocumentFile extends StatelessWidget {
  final String name;
  const DocumentFile({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        barrierColor: Colors.transparent,
        context: context,
        barrierDismissible: true, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 0.0,
            backgroundColor: Colors.white,
            content: Container(
              decoration: BoxDecoration(
                // color: constants.whiteColor,
                border: Border.all(color: constants.greyColor, width: 0.5),
              ),
              child: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.share,
                        color: theme.primaryColor,
                      ),
                      onTap: () {},
                      title: Text("Share", style: theme.textTheme.bodyText1!.copyWith(color: constants.greyColor)),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.download,
                        color: theme.primaryColor,
                      ),
                      onTap: () {},
                      title: Text("Download", style: theme.textTheme.bodyText1!.copyWith(color: constants.greyColor)),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/pdf_icon.png"),
                      width: 30.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      child: Text(
                        name,
                        maxLines: 1,
                        style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor, overflow: TextOverflow.ellipsis),
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {
                    _showMyDialog();
                  },
                  icon: Icon(Icons.more_vert))
            ],
          ),
        ),
        Divider(
          color: Colors.grey.shade200,
          thickness: 1.0,
        )
      ],
    );
  }
}
