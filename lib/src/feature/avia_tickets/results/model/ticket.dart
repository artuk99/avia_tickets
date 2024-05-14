import 'package:avia_tickets/src/feature/avia_tickets/home/model/price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket.g.dart';

DateTime _dateFromJson(String date) => DateTime.parse(date);

@JsonSerializable()
class Ticket {
  Ticket({
    required this.id,
    required this.badge,
    required this.price,
    required this.departure,
    required this.arrival,
    required this.hasTransfer,
  });

  final int id;
  final String? badge;
  final Price price;
  final Departure departure;
  final Arrival arrival;
  @JsonKey(name: 'has_transfer')
  final bool hasTransfer;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  Map<String, dynamic> toJson() => _$TicketToJson(this);
}

@JsonSerializable()
class Departure {
  Departure({
    required this.town,
    required this.date,
    required this.airport,
  });

  final String town;
  @JsonKey(fromJson: _dateFromJson)
  final DateTime date;
  final String airport;

  factory Departure.fromJson(Map<String, dynamic> json) => _$DepartureFromJson(json);

  Map<String, dynamic> toJson() => _$DepartureToJson(this);
}

@JsonSerializable()
class Arrival {
  Arrival({
    required this.town,
    required this.date,
    required this.airport,
  });

  final String town;
  @JsonKey(fromJson: _dateFromJson)
  final DateTime date;
  final String airport;

  factory Arrival.fromJson(Map<String, dynamic> json) => _$ArrivalFromJson(json);

  Map<String, dynamic> toJson() => _$ArrivalToJson(this);
}
