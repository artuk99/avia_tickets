// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      id: (json['id'] as num).toInt(),
      badge: json['badge'] as String?,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      departure: Departure.fromJson(json['departure'] as Map<String, dynamic>),
      arrival: Arrival.fromJson(json['arrival'] as Map<String, dynamic>),
      hasTransfer: json['has_transfer'] as bool,
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'id': instance.id,
      'badge': instance.badge,
      'price': instance.price,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'has_transfer': instance.hasTransfer,
    };

Departure _$DepartureFromJson(Map<String, dynamic> json) => Departure(
      town: json['town'] as String,
      date: _dateFromJson(json['date'] as String),
      airport: json['airport'] as String,
    );

Map<String, dynamic> _$DepartureToJson(Departure instance) => <String, dynamic>{
      'town': instance.town,
      'date': instance.date.toIso8601String(),
      'airport': instance.airport,
    };

Arrival _$ArrivalFromJson(Map<String, dynamic> json) => Arrival(
      town: json['town'] as String,
      date: _dateFromJson(json['date'] as String),
      airport: json['airport'] as String,
    );

Map<String, dynamic> _$ArrivalToJson(Arrival instance) => <String, dynamic>{
      'town': instance.town,
      'date': instance.date.toIso8601String(),
      'airport': instance.airport,
    };
