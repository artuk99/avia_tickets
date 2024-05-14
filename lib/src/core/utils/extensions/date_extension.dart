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
