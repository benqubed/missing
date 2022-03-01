import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import "package:collection/collection.dart";

class CalendarWidget extends StatelessWidget {
  CalendarWidget({Key? key}) : super(key: key);

  DateTime currentDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var days = _getMonthDays(currentDay);
    ThemeData theme = Theme.of(context);

    List _availableDays = [22, 24, 27];

    return Container(
      color: constants.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: List.generate(days.length, (index) {
            var weekday = days[index];
            return Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      weekday.day.substring(0, 1),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ...List.generate(weekday.days.length, (index) {
                    var day = weekday.days[index];
                    var currentDay = DateTime.now();

                    bool isAvailable = false;
                    _availableDays.contains(day.dateTime.day) ? isAvailable = true : false;

                    return currentDay.day == day.dateTime.day && currentDay.month == day.dateTime.month
                        ? Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: constants.lightColor,
                                // border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                child: Text(
                                  '${day.dateTime.day}',
                                  style: theme.textTheme.caption!.copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        : isAvailable
                            ? Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  padding: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${day.dateTime.day}',
                                      style: theme.textTheme.caption!.copyWith(color: day.isGreyed ? Colors.grey : Colors.black),
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Center(
                                    child: Text(
                                      '${day.dateTime.day}',
                                      style: theme.textTheme.caption!.copyWith(color: day.isGreyed ? Colors.grey : Colors.black),
                                    ),
                                  ),
                                ),
                              );
                  }),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  List<WeekDay> _getMonthDays(DateTime date) {
    var month = date.month;
    var newMonth = month;
    var day = 1;

    List<DateTime> dates = [];

    while (newMonth == month) {
      var newDate = DateTime(date.year, date.month, day);

      newMonth = newDate.month;
      if (newMonth == month) {
        dates.add(newDate);
      }

      day++;
    }

    var groups = groupBy(dates, (e) {
      DateTime date = e as DateTime;
      return date.weekday;
    });

    List<WeekDay> weekdays = [];

    groups.forEach((key, value) {
      var weekDay = WeekDay(
        days: value.map((e) => DateData(dateTime: e, isGreyed: false)).toList(),
        weekday: key,
        day: _getDayName(key),
      );
      weekdays.add(weekDay);
    });

    weekdays.sort((a, b) => a.weekday.compareTo(b.weekday));

    weekdays.insert(0, weekdays.last);
    weekdays.removeLast();

    bool isFirstDay = false;

    for (var weekday in weekdays) {
      var day = weekday.days.first;
      if (day.dateTime.day == 1) {
        isFirstDay = true;
      }

      if (!isFirstDay) {
        weekday.days.insert(
          0,
          DateData(
            dateTime: day.dateTime.subtract(const Duration(days: 7)),
            isGreyed: true,
          ),
        );
      }
    }

    bool isLastDay = false;
    int daysSize = 0;

    for (var weekday in weekdays) {
      var day = weekday.days.last;
      if (day.dateTime.day == dates.length) {
        daysSize = weekday.days.length;
        isLastDay = true;
      }

      if (isLastDay && weekday.days.length < daysSize) {
        weekday.days.add(DateData(
          dateTime: day.dateTime.add(const Duration(days: 7)),
          isGreyed: true,
        ));
      }
    }

    return weekdays;
  }

  String _getDayName(int weekday) {
    switch (weekday) {
      case DateTime.monday:
        return "Monday";
      case DateTime.tuesday:
        return "Tuesday";
      case DateTime.wednesday:
        return "Wednesday";
      case DateTime.thursday:
        return "Thursday";
      case DateTime.friday:
        return "Friday";
      case DateTime.saturday:
        return "Saturday";
      default:
        return "Sunday";
    }
  }
}

class WeekDay {
  final int weekday;
  final String day;
  final List<DateData> days;

  WeekDay({
    required this.days,
    required this.weekday,
    required this.day,
  });
}

class DateData {
  final bool isGreyed;
  final DateTime dateTime;

  DateData({required this.dateTime, required this.isGreyed});
}

List<DateTime> _datesWrap(DateTime date) {
  var month = date.month;
  var newMonth = month;
  int day = 1;

  List<DateTime> widgets = [];

  while (newMonth == 0) {
    var newDate = DateTime(date.year, date.month, date.day);
    newMonth = newDate.month;
    widgets.add(newDate);
    print(day);
    day++;
  }
  print(widgets.length);
  return widgets;
}
