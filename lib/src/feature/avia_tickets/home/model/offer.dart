import 'package:avia_tickets/src/feature/avia_tickets/home/model/price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'offer.g.dart';

@JsonSerializable()
class Offer {
  Offer({
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });

  final int id;
  final String title;
  final String town;
  final Price price;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

  Map<String, dynamic> toJson() => _$OfferToJson(this);
}
