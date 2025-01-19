import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormater {
  static DateFormat formaterDate = DateFormat("dd/MM");
  static DateFormat dateRequestFormater = DateFormat("yyyy-MM-dd");
  static TimeOfDay parseTimeOfDay(String timeString) {
    DateTime dateTime = DateFormat("HH:mm").parse(timeString);
    return TimeOfDay(
      hour: dateTime.hour,
      minute: dateTime.minute,
    );
  }
}
