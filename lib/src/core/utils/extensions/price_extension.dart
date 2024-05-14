import 'package:avia_tickets/src/feature/avia_tickets/home/model/price.dart';
import 'package:intl/intl.dart';

final _formatter = NumberFormat('###,###');

extension PriceExtension on Price {
  String get formatted => _formatter.format(value).replaceAll(',', ' ');
}
