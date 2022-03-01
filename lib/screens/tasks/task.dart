import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/icons/custom_icons_icons.dart';
import 'package:missing/screens/tasks/followup_text.dart';
import 'package:missing/widgets/task/custom_dialog.dart';
import 'package:missing/widgets/task/seperator.dart';

class SingleTask extends StatefulWidget {
  const SingleTask({Key? key}) : super(key: key);

  @override
  _SingleTaskState createState() => _SingleTaskState();
}

class _SingleTaskState extends State<SingleTask> {
  @override
  Widget build(BuildContext context) {
    List<Stages> stages = [
      Stages(
        title: "Call",
        iconPath: const Icon(
          Icons.ac_unit,
          color: constants.whiteColor,
        ),
        isComplete: true,
        isLast: false,
        callFunction: () {},
      ),
      Stages(
        title: "Text",
        iconPath: const Icon(
          Icons.message_outlined,
          color: constants.whiteColor,
        ),
        isComplete: false,
        isLast: false,
        callFunction: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => FollowUpText()));
        },
      ),
      Stages(
        title: "Email",
        iconPath: const Icon(
          Icons.email,
          color: constants.whiteColor,
        ),
        isComplete: false,
        isLast: false,
        callFunction: () {},
      ),
      Stages(
        title: "Notes",
        iconPath: const Icon(
          Icons.notes,
          color: constants.whiteColor,
        ),
        isComplete: false,
        isLast: true,
        callFunction: () {},
      ),
    ];

    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: Text(
            'Lead Follow-up: John Daniel',
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(10.0),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.calendar_today_outlined,
                    color: theme.primaryColor,
                  ),
                  title: Text(
                    "Wed, Jan 19, 2:30 PM",
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      color: theme.primaryColor,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.alarm,
                    color: theme.primaryColor,
                  ),
                  title: Text(
                    "Mon, Jan 17, 2:30 PM",
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      color: theme.primaryColor,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade200,
                  thickness: 1.5,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    CustomIcons.notes,
                    color: theme.primaryColor,
                  ),
                  title: Text(
                    "Descriptions",
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      decoration: const InputDecoration(hintText: '', hintStyle: TextStyle(color: constants.greyColor), isCollapsed: true, border: InputBorder.none),
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade200,
                  thickness: 1.5,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    CustomIcons.notes,
                    color: theme.primaryColor,
                  ),
                  title: Text(
                    "Action / Follow-Up",
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      showDialog(
                        barrierColor: Colors.black26,
                        context: context,
                        builder: (context) {
                          return CustomDialog();
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.info,
                      color: constants.goldColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ...stages,
                const SizedBox(
                  height: 20.0,
                ),
              ])),
            )
          ],
        ));
  }
}

class Stages extends StatelessWidget {
  final String title;
  final bool isComplete;
  final Widget iconPath;
  final bool isLast;
  final callFunction;
  const Stages({Key? key, required this.title, required this.isComplete, required this.iconPath, required this.isLast, required this.callFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              isComplete
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(color: theme.primaryColor, borderRadius: BorderRadius.circular(15)),
                          child: const Icon(
                            Icons.check,
                            size: 18,
                            color: constants.whiteColor,
                          ),
                        ),
                        !isLast
                            ? Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 50,
                                  width: 2,
                                  color: theme.primaryColor,
                                ))
                            : const SizedBox()
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(color: Colors.white, border: Border.all(color: theme.primaryColor), borderRadius: BorderRadius.circular(15)),
                        ),
                        !isLast
                            ? Padding(
                                padding: const EdgeInsets.all(11.5),
                                child: SizedBox(
                                  height: 50,
                                  width: 2,
                                  child: CustomPaint(size: const Size(1, double.infinity), painter: DashedLineVerticalPainter()),
                                ))
                            : const SizedBox()
                      ],
                    ),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: callFunction,
              child: Row(
                children: [
                  Flexible(child: iconPath),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Flexible(
                    child: Text(
                      title,
                      style: theme.textTheme.bodyText2!.copyWith(color: constants.whiteColor),
                    ),
                  ),
                ],
              ),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
