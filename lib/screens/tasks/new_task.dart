import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/icons/custom_icons_icons.dart';
import 'package:missing/widgets/task/datetime_picker.dart';

class NewTask extends StatefulWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: Text(
            'New Task',
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(10.0),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                ListTile(
                  leading: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      border: Border.all(color: theme.primaryColor),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  title: TextFormField(
                    decoration: InputDecoration(hintText: 'Type Task Name Here', hintStyle: theme.textTheme.bodyText2!.copyWith(), isCollapsed: true, border: InputBorder.none),
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                  ),
                ),
                Divider(
                  color: Colors.grey.shade200,
                  thickness: 1.5,
                ),
                CustomDateTimePicker(),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.alarm,
                    color: theme.primaryColor,
                  ),
                  title: Text(
                    "Remind Me",
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.notes,
                    color: theme.primaryColor,
                  ),
                  title: Text(
                    "Add to Schedule",
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade200,
                  thickness: 1.5,
                ),
                ListTile(
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
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Cancel",
                            style: theme.textTheme.bodyText2!.copyWith(color: constants.whiteColor),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.grey),
                            elevation: MaterialStateProperty.all(0.0),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Save",
                            style: theme.textTheme.bodyText2!.copyWith(color: constants.whiteColor),
                          ),
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0.0),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
              ])),
            )
          ],
        ));
  }
}
