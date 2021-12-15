part of dart_extension;

extension YGDateExtension on DateTime {
  /// get this month days count
  ///
  /// DateTime(2021, 3).monthDay -> 31
  int get monthDays {
    return _daysInMonth(this);
  }

  /// date format
  ///
  /// DateTime.now().format() -> '2021-04-24'
  String format({String pattern = 'yyyy-MM-dd'}) {
    DateFormat formatter = DateFormat(pattern);
    return formatter.format(this);
  }

  /// get start of week datetime
  ///
  /// DateTime.now().startOfWeek
  DateTime get startOfWeek {
    DateTime now = this;
    int currentDay = now.weekday;
    DateTime firstDayOfWeek = now.subtract(Duration(days: currentDay));
    return DateTime(firstDayOfWeek.year, firstDayOfWeek.month, firstDayOfWeek.day);
  }

  /// get end of week datetime
  ///
  /// DateTime.now().endOfWeek
  DateTime get endOfWeek {
    DateTime now = this;
    int currentDay = now.weekday;
    DateTime endDayOfWeek = now.add(Duration(days: DateTime.daysPerWeek - currentDay));
    return DateTime(endDayOfWeek.year, endDayOfWeek.month, endDayOfWeek.day);
  }

  DateTime get startOfDay {
    DateTime now = this;
    return DateTime(now.year, now.month, now.day);
  }

  DateTime get endOfDay {
    DateTime now = this;
    return DateTime(now.year, now.month, now.day, 23, 59, 59);
  }

  int _daysInMonth(DateTime date) {
    var firstDayThisMonth = new DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = new DateTime(firstDayThisMonth.year, firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }
}
