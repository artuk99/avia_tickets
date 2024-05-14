import 'package:avia_tickets/src/feature/avia_tickets/home/model/price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_recomendation.g.dart';

@JsonSerializable()
class TicketRecomendation {
  TicketRecomendation({
    required this.id,
    required this.title,
    required this.timeRange,
    required this.price,
  });

  final int id;
  final String title;
  @JsonKey(name: 'time_range')
  final List<String> timeRange;
  final Price price;

  factory TicketRecomendation.fromJson(Map<String, dynamic> json) =>
      _$TicketRecomendationFromJson(json);

  Map<String, dynamic> toJson() => _$TicketRecomendationToJson(this);
}
