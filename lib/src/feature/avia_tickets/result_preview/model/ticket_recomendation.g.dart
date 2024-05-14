// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_recomendation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketRecomendation _$TicketRecomendationFromJson(Map<String, dynamic> json) =>
    TicketRecomendation(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      timeRange: (json['time_range'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicketRecomendationToJson(
        TicketRecomendation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'time_range': instance.timeRange,
      'price': instance.price,
    };
