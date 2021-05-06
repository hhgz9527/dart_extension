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

  int _daysInMonth(DateTime date) {
    var firstDayThisMonth = new DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = new DateTime(firstDayThisMonth.year, firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }
}
