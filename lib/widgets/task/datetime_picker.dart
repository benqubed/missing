import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class CustomDateTimePicker extends StatefulWidget {
  @override
  _CustomDateTimePickerState createState() {
    return _CustomDateTimePickerState();
  }
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker> {
  String date = "";
  DateTime selectedDate = DateTime.now();
  bool setDateTime = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ListTile(
      onTap: () {
        // _selectDate(context);
        showDialog(
          barrierColor: Colors.black26,
          context: context,
          builder: (context) {
            return CustomPickerTabs();
          },
        );
      },
      leading: Icon(
        Icons.calendar_today_outlined,
        color: theme.primaryColor,
      ),
      title:
          // setDateTime ? Text(
          //     "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
          //     style: theme.textTheme.bodyText2!.copyWith(),
          //   ):
          Text(
        "Set Due Date",
        style: theme.textTheme.bodyText2!.copyWith(),
      ),
    );
  }
}

class CustomPickerTabs extends StatefulWidget {
  // final String title;

  const CustomPickerTabs({
    Key? key,
  }) : super(key: key);

  @override
  _CustomPickerTabsState createState() => _CustomPickerTabsState();
}

class _CustomPickerTabsState extends State<CustomPickerTabs> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2015, 8), lastDate: DateTime(2101), cancelText: "Cancel", confirmText: "Save");
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Dialog(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 2,
            bottom: TabBar(
              labelStyle: theme.textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.bold,
              ),
              labelColor: constants.whiteColor,
              tabs: const [
                Tab(
                  text: "DATE",
                ),
                Tab(
                  text: "TIME",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Theme(
                  data: ThemeData.light().copyWith(
                    primaryColor: theme.primaryColor,
                    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
                    colorScheme: ColorScheme.light(primary: theme.primaryColor).copyWith(secondary: const Color(0xFF8CE7F1)),
                  ),
                  child: DatePickerDialog(initialDate: selectedDate, firstDate: DateTime(2022, 1), lastDate: DateTime(2101), cancelText: "Cancel", confirmText: "Save")),
              Theme(
                data: ThemeData.light().copyWith(
                  primaryColor: theme.primaryColor,
                  buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
                  colorScheme: ColorScheme.light(primary: theme.primaryColor).copyWith(secondary: const Color(0xFF8CE7F1)),
                ),
                child: TimePickerDialog(
                  initialTime: selectedTime,
                  cancelText: "Cancel",
                  confirmText: "Save",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
