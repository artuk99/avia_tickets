// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchQuery {
  Point get departure => throw _privateConstructorUsedError;
  Point? get arrival => throw _privateConstructorUsedError;
  FlightDate get flightDate => throw _privateConstructorUsedError;
  Passengers get passengers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchQueryCopyWith<SearchQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueryCopyWith<$Res> {
  factory $SearchQueryCopyWith(
          SearchQuery value, $Res Function(SearchQuery) then) =
      _$SearchQueryCopyWithImpl<$Res, SearchQuery>;
  @useResult
  $Res call(
      {Point departure,
      Point? arrival,
      FlightDate flightDate,
      Passengers passengers});

  $PointCopyWith<$Res> get departure;
  $PointCopyWith<$Res>? get arrival;
  $FlightDateCopyWith<$Res> get flightDate;
  $PassengersCopyWith<$Res> get passengers;
}

/// @nodoc
class _$SearchQueryCopyWithImpl<$Res, $Val extends SearchQuery>
    implements $SearchQueryCopyWith<$Res> {
  _$SearchQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departure = null,
    Object? arrival = freezed,
    Object? flightDate = null,
    Object? passengers = null,
  }) {
    return _then(_value.copyWith(
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as Point,
      arrival: freezed == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as Point?,
      flightDate: null == flightDate
          ? _value.flightDate
          : flightDate // ignore: cast_nullable_to_non_nullable
              as FlightDate,
      passengers: null == passengers
          ? _value.passengers
          : passengers // ignore: cast_nullable_to_non_nullable
              as Passengers,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get departure {
    return $PointCopyWith<$Res>(_value.departure, (value) {
      return _then(_value.copyWith(departure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res>? get arrival {
    if (_value.arrival == null) {
      return null;
    }

    return $PointCopyWith<$Res>(_value.arrival!, (value) {
      return _then(_value.copyWith(arrival: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightDateCopyWith<$Res> get flightDate {
    return $FlightDateCopyWith<$Res>(_value.flightDate, (value) {
      return _then(_value.copyWith(flightDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PassengersCopyWith<$Res> get passengers {
    return $PassengersCopyWith<$Res>(_value.passengers, (value) {
      return _then(_value.copyWith(passengers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchQueryImplCopyWith<$Res>
    implements $SearchQueryCopyWith<$Res> {
  factory _$$SearchQueryImplCopyWith(
          _$SearchQueryImpl value, $Res Function(_$SearchQueryImpl) then) =
      __$$SearchQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Point departure,
      Point? arrival,
      FlightDate flightDate,
      Passengers passengers});

  @override
  $PointCopyWith<$Res> get departure;
  @override
  $PointCopyWith<$Res>? get arrival;
  @override
  $FlightDateCopyWith<$Res> get flightDate;
  @override
  $PassengersCopyWith<$Res> get passengers;
}

/// @nodoc
class __$$SearchQueryImplCopyWithImpl<$Res>
    extends _$SearchQueryCopyWithImpl<$Res, _$SearchQueryImpl>
    implements _$$SearchQueryImplCopyWith<$Res> {
  __$$SearchQueryImplCopyWithImpl(
      _$SearchQueryImpl _value, $Res Function(_$SearchQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departure = null,
    Object? arrival = freezed,
    Object? flightDate = null,
    Object? passengers = null,
  }) {
    return _then(_$SearchQueryImpl(
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as Point,
      arrival: freezed == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as Point?,
      flightDate: null == flightDate
          ? _value.flightDate
          : flightDate // ignore: cast_nullable_to_non_nullable
              as FlightDate,
      passengers: null == passengers
          ? _value.passengers
          : passengers // ignore: cast_nullable_to_non_nullable
              as Passengers,
    ));
  }
}

/// @nodoc

class _$SearchQueryImpl implements _SearchQuery {
  const _$SearchQueryImpl(
      {required this.departure,
      this.arrival,
      required this.flightDate,
      this.passengers = const Passengers()});

  @override
  final Point departure;
  @override
  final Point? arrival;
  @override
  final FlightDate flightDate;
  @override
  @JsonKey()
  final Passengers passengers;

  @override
  String toString() {
    return 'SearchQuery(departure: $departure, arrival: $arrival, flightDate: $flightDate, passengers: $passengers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryImpl &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrival, arrival) || other.arrival == arrival) &&
            (identical(other.flightDate, flightDate) ||
                other.flightDate == flightDate) &&
            (identical(other.passengers, passengers) ||
                other.passengers == passengers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, departure, arrival, flightDate, passengers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      __$$SearchQueryImplCopyWithImpl<_$SearchQueryImpl>(this, _$identity);
}

abstract class _SearchQuery implements SearchQuery {
  const factory _SearchQuery(
      {required final Point departure,
      final Point? arrival,
      required final FlightDate flightDate,
      final Passengers passengers}) = _$SearchQueryImpl;

  @override
  Point get departure;
  @override
  Point? get arrival;
  @override
  FlightDate get flightDate;
  @override
  Passengers get passengers;
  @override
  @JsonKey(ignore: true)
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Point {
  String get town => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PointCopyWith<Point> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointCopyWith<$Res> {
  factory $PointCopyWith(Point value, $Res Function(Point) then) =
      _$PointCopyWithImpl<$Res, Point>;
  @useResult
  $Res call({String town});
}

/// @nodoc
class _$PointCopyWithImpl<$Res, $Val extends Point>
    implements $PointCopyWith<$Res> {
  _$PointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? town = null,
  }) {
    return _then(_value.copyWith(
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointImplCopyWith<$Res> implements $PointCopyWith<$Res> {
  factory _$$PointImplCopyWith(
          _$PointImpl value, $Res Function(_$PointImpl) then) =
      __$$PointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String town});
}

/// @nodoc
class __$$PointImplCopyWithImpl<$Res>
    extends _$PointCopyWithImpl<$Res, _$PointImpl>
    implements _$$PointImplCopyWith<$Res> {
  __$$PointImplCopyWithImpl(
      _$PointImpl _value, $Res Function(_$PointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? town = null,
  }) {
    return _then(_$PointImpl(
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PointImpl implements _Point {
  const _$PointImpl({required this.town});

  @override
  final String town;

  @override
  String toString() {
    return 'Point(town: $town)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointImpl &&
            (identical(other.town, town) || other.town == town));
  }

  @override
  int get hashCode => Object.hash(runtimeType, town);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointImplCopyWith<_$PointImpl> get copyWith =>
      __$$PointImplCopyWithImpl<_$PointImpl>(this, _$identity);
}

abstract class _Point implements Point {
  const factory _Point({required final String town}) = _$PointImpl;

  @override
  String get town;
  @override
  @JsonKey(ignore: true)
  _$$PointImplCopyWith<_$PointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FlightDate {
  DateTime get departure => throw _privateConstructorUsedError;
  DateTime? get back => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlightDateCopyWith<FlightDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightDateCopyWith<$Res> {
  factory $FlightDateCopyWith(
          FlightDate value, $Res Function(FlightDate) then) =
      _$FlightDateCopyWithImpl<$Res, FlightDate>;
  @useResult
  $Res call({DateTime departure, DateTime? back});
}

/// @nodoc
class _$FlightDateCopyWithImpl<$Res, $Val extends FlightDate>
    implements $FlightDateCopyWith<$Res> {
  _$FlightDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departure = null,
    Object? back = freezed,
  }) {
    return _then(_value.copyWith(
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DateTime,
      back: freezed == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlightDateImplCopyWith<$Res>
    implements $FlightDateCopyWith<$Res> {
  factory _$$FlightDateImplCopyWith(
          _$FlightDateImpl value, $Res Function(_$FlightDateImpl) then) =
      __$$FlightDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime departure, DateTime? back});
}

/// @nodoc
class __$$FlightDateImplCopyWithImpl<$Res>
    extends _$FlightDateCopyWithImpl<$Res, _$FlightDateImpl>
    implements _$$FlightDateImplCopyWith<$Res> {
  __$$FlightDateImplCopyWithImpl(
      _$FlightDateImpl _value, $Res Function(_$FlightDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departure = null,
    Object? back = freezed,
  }) {
    return _then(_$FlightDateImpl(
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DateTime,
      back: freezed == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$FlightDateImpl implements _FlightDate {
  const _$FlightDateImpl({required this.departure, this.back});

  @override
  final DateTime departure;
  @override
  final DateTime? back;

  @override
  String toString() {
    return 'FlightDate(departure: $departure, back: $back)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlightDateImpl &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.back, back) || other.back == back));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departure, back);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlightDateImplCopyWith<_$FlightDateImpl> get copyWith =>
      __$$FlightDateImplCopyWithImpl<_$FlightDateImpl>(this, _$identity);
}

abstract class _FlightDate implements FlightDate {
  const factory _FlightDate(
      {required final DateTime departure,
      final DateTime? back}) = _$FlightDateImpl;

  @override
  DateTime get departure;
  @override
  DateTime? get back;
  @override
  @JsonKey(ignore: true)
  _$$FlightDateImplCopyWith<_$FlightDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Passengers {
  int get adults => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PassengersCopyWith<Passengers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengersCopyWith<$Res> {
  factory $PassengersCopyWith(
          Passengers value, $Res Function(Passengers) then) =
      _$PassengersCopyWithImpl<$Res, Passengers>;
  @useResult
  $Res call({int adults, String type});
}

/// @nodoc
class _$PassengersCopyWithImpl<$Res, $Val extends Passengers>
    implements $PassengersCopyWith<$Res> {
  _$PassengersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adults = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      adults: null == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassengersImplCopyWith<$Res>
    implements $PassengersCopyWith<$Res> {
  factory _$$PassengersImplCopyWith(
          _$PassengersImpl value, $Res Function(_$PassengersImpl) then) =
      __$$PassengersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int adults, String type});
}

/// @nodoc
class __$$PassengersImplCopyWithImpl<$Res>
    extends _$PassengersCopyWithImpl<$Res, _$PassengersImpl>
    implements _$$PassengersImplCopyWith<$Res> {
  __$$PassengersImplCopyWithImpl(
      _$PassengersImpl _value, $Res Function(_$PassengersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adults = null,
    Object? type = null,
  }) {
    return _then(_$PassengersImpl(
      adults: null == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PassengersImpl implements _Passengers {
  const _$PassengersImpl({this.adults = 1, this.type = 'эконом'});

  @override
  @JsonKey()
  final int adults;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'Passengers(adults: $adults, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassengersImpl &&
            (identical(other.adults, adults) || other.adults == adults) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adults, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PassengersImplCopyWith<_$PassengersImpl> get copyWith =>
      __$$PassengersImplCopyWithImpl<_$PassengersImpl>(this, _$identity);
}

abstract class _Passengers implements Passengers {
  const factory _Passengers({final int adults, final String type}) =
      _$PassengersImpl;

  @override
  int get adults;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$PassengersImplCopyWith<_$PassengersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
