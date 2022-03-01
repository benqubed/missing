import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/widgets/calendar_widget.dart';
import 'package:missing/widgets/custom_button.dart';
import 'package:missing/widgets/custom_outlined_button.dart';

class ScreenFourteen extends StatefulWidget {
  const ScreenFourteen({Key? key}) : super(key: key);

  @override
  _ScreenFourteenState createState() => _ScreenFourteenState();
}

class _ScreenFourteenState extends State<ScreenFourteen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: constants.dividerColor,
      appBar: AppBar(
        elevation: 1,
        title: const Text('My Schedule'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help),
          )
        ],
      ),
      body: ListView(
        children: [
          CalendarWidget(),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Offer-Up Shift: ",
                    style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Shift Details:",
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                  const ShiftDetails(
                    type: "Sales",
                    date: "Thursday July 27",
                    time: "3:00p - 11:00p",
                    title: "New Car Sales",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Notes/Reason for Request",
                    style: theme.textTheme.bodyText2!.copyWith(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(color: constants.whiteColor, border: Border.all(color: constants.dividerColor), borderRadius: BorderRadius.circular(5)),
                    child: TextFormField(
                      decoration: const InputDecoration(isCollapsed: true, border: InputBorder.none),
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: OptionItem(title: "Supervisor Only"),
                      ),
                      Expanded(child: OptionItem(title: "Make Public")),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomOutlinedButton(
                          title: "Cancel",
                          customFunction: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: CustomButton(
                          title: "Post Shift",
                          customFunction: () {},
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class OptionItem extends StatefulWidget {
  final String title;
  const OptionItem({Key? key, required this.title}) : super(key: key);

  @override
  _OptionItemState createState() => _OptionItemState();
}

class _OptionItemState extends State<OptionItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Row(children: [
      InkWell(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
              print(isSelected);
            });
          },
          child: isSelected
              ? Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.primaryColor,
                    ),
                    color: theme.primaryColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ),
                )
              : Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.primaryColor,
                    ),
                  ),
                )),
      const SizedBox(
        width: 10.0,
      ),
      Text(
        widget.title,
        style: theme.textTheme.bodyText2!.copyWith(
          color: constants.blackFaded,
        ),
      )
    ]);
  }
}

class ShiftDetails extends StatelessWidget {
  final String type;
  final String date;
  final String time;
  final String title;

  const ShiftDetails({
    Key? key,
    required this.type,
    required this.date,
    required this.time,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: constants.whiteColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: theme.textTheme.bodyText2!.copyWith(
              color: theme.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            time,
            style: theme.textTheme.bodyText2!.copyWith(
              color: constants.lightColor,
            ),
          ),
          Text(
            title,
            style: theme.textTheme.bodyText2!.copyWith(),
          ),
          Text(
            type,
            style: theme.textTheme.bodyText2!.copyWith(),
          ),
        ],
      ),
    );
  }
}
