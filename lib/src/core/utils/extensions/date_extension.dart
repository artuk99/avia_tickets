import 'package:intl/intl.dart';

final _dateTimeFormatter = DateFormat('hh:mm');
final _dateDayFormatter = DateFormat('EEE', 'ru');
final _dateDayMonthFormatter = DateFormat('d MMMM', 'ru');

extension DateExtension on DateTime {
  String get daymonthAbbreviated => '$day ${switch (month) {
        1 => 'янв',
        2 => 'фев',
        3 => 'мар',
        4 => 'апр',
        5 => 'мая',
        6 => 'июн',
        7 => 'июл',
        8 => 'авг',
        9 => 'сен',
        10 => 'окт',
        11 => 'ноя',
        12 => 'дек',
        _ => '',
      }}';

  String get dayMonth => _dateDayMonthFormatter.format(this);

  // ignore: non_constant_identifier_names
  String get hh_mm => _dateTimeFormatter.format(this);

  String get dayAbbreviated => _dateDayFormatter.format(this);
}

extension DurationExtension on Duration {
  /// Returns the flight time in hours.
  ///
  /// If the flight duration is less than 10 hours,
  /// the minutes are formatted according to the following rules:
  ///   < 15 minutes - discarded
  ///   > 15 <= 45 - rounded to 30
  ///   > 45 - discarded and the hour is increased by 1.
  /// If the flight duration is 10 hours or more, the return value
  /// is formatted as a string without decimal places, the hours are
  /// incremented by 1 if the minutes are greater than or equal to 30.
  ///
  String get flightTime {
    String s = '$inHours';

    final m = inMinutes - inHours * 60;
    if (inHours < 10) {
      if (m > 15 && m <= 45) s += '.5';
      if (m > 45) s = '${inHours + 1}';
    } else {
      if (m >= 30) s = '${inHours + 1}';
    }

    return s;
  }
}
