import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class PersonFile extends StatelessWidget {
  final String name;
  final int position;
  bool isUp;
  bool isNext;
  PersonFile({Key? key, required this.name, required this.position, required this.isUp, required this.isNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        ListTile(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => UpHistory()));
          },
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/user.png"),
            maxRadius: 18.0,
          ),
          title: Row(
            children: [
              Flexible(
                child: Text(
                  name,
                  maxLines: 1,
                  style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          trailing: isUp
              ? Text(
                  "UP Now",
                  maxLines: 1,
                  style: theme.textTheme.bodyText2!.copyWith(color: constants.greenColor, fontWeight: FontWeight.bold),
                )
              : Text(
                  isNext ? "UP Next" : "$position",
                  maxLines: 1,
                  style: theme.textTheme.bodyText2!.copyWith(color: theme.primaryColor, fontWeight: FontWeight.bold),
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
