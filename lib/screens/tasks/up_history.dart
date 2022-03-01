import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class UpHistory extends StatefulWidget {
  const UpHistory({Key? key}) : super(key: key);

  @override
  _UpHistoryState createState() => _UpHistoryState();
}

class _UpHistoryState extends State<UpHistory> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    List<ListItem> listItems = [
      const ListItem(
        name: "John Daniel",
        date: "Aug 2",
        time: "2:15p",
      ),
      const ListItem(
        name: "John Daniel",
        date: "Aug 2",
        time: "2:15p",
      ),
      const ListItem(
        name: "John Daniel",
        date: "Aug 2",
        time: "2:15p",
      ),
      const ListItem(
        name: "John Daniel",
        date: "Aug 2",
        time: "2:15p",
      ),
      const ListItem(
        name: "John Daniel",
        date: "Aug 2",
        time: "2:15p",
      ),
      const ListItem(
        name: "John Daniel",
        date: "Aug 2",
        time: "2:15p",
      ),
      const ListItem(
        name: "John Daniel",
        date: "Aug 2",
        time: "2:15p",
      ),
      const ListItem(
        name: "John Daniel",
        date: "Aug 2",
        time: "2:15p",
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Alvin Testco - UP History"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Summary: ",
                          style: theme.textTheme.headline6!.copyWith(color: theme.primaryColor, fontSize: 18.0),
                        ),
                        TextSpan(
                          text: "Aug 1-25th",
                          style: theme.textTheme.bodyText2!.copyWith(color: theme.primaryColor),
                        )
                      ])),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My UP Count:",
                        style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Text(
                          "8",
                          style: theme.textTheme.bodyText1!.copyWith(color: theme.primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Team Avg UP Count:",
                        style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Text(
                          "8",
                          style: theme.textTheme.bodyText1!.copyWith(color: theme.primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ])),
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                RichText(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "History: ",
                        style: theme.textTheme.bodyText1!.copyWith(color: constants.lightColor),
                      ),
                      TextSpan(
                        text: "Aug 1-25th",
                        style: theme.textTheme.bodyText2!.copyWith(color: constants.lightColor),
                      )
                    ])),
                const SizedBox(
                  height: 20.0,
                ),
                ...listItems
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatefulWidget {
  final String name;
  final String date;
  final String time;

  const ListItem({Key? key, required this.name, required this.date, required this.time}) : super(key: key);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(color: theme.primaryColor, borderRadius: BorderRadius.circular(15)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.5),
                child: Container(height: 70, width: 2, color: theme.primaryColor),
              )
            ],
          ),
        ],
      ),
      const SizedBox(
        width: 15,
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "John Daniel ",
                  style: theme.textTheme.bodyText2,
                ),
                RichText(
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "Aug 2 @ ",
                      ),
                      TextSpan(
                        text: "02:15p",
                      ),
                    ],
                    style: theme.textTheme.caption!.copyWith(color: constants.greyColor),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
