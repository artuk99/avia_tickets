import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_query.freezed.dart';

@freezed
class SearchQuery with _$SearchQuery {
  const factory SearchQuery({
    required Point departure,
    Point? arrival,
    required FlightDate flightDate,
    @Default(Passengers()) Passengers passengers,
  }) = _SearchQuery;
}

@freezed
class Point with _$Point {
  const factory Point({
    required String town,
  }) = _Point;
}

@freezed
class FlightDate with _$FlightDate {
  const factory FlightDate({
    required DateTime departure,
    DateTime? back,
  }) = _FlightDate;
}

@freezed
class Passengers with _$Passengers {
  const factory Passengers({
    @Default(1) int adults,
    @Default('эконом') String type,
  }) = _Passengers;
}
