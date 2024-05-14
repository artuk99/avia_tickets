// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OffersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOffers value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOffers value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOffers value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersEventCopyWith<$Res> {
  factory $OffersEventCopyWith(
          OffersEvent value, $Res Function(OffersEvent) then) =
      _$OffersEventCopyWithImpl<$Res, OffersEvent>;
}

/// @nodoc
class _$OffersEventCopyWithImpl<$Res, $Val extends OffersEvent>
    implements $OffersEventCopyWith<$Res> {
  _$OffersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchOffersImplCopyWith<$Res> {
  factory _$$FetchOffersImplCopyWith(
          _$FetchOffersImpl value, $Res Function(_$FetchOffersImpl) then) =
      __$$FetchOffersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchOffersImplCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$FetchOffersImpl>
    implements _$$FetchOffersImplCopyWith<$Res> {
  __$$FetchOffersImplCopyWithImpl(
      _$FetchOffersImpl _value, $Res Function(_$FetchOffersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchOffersImpl extends _FetchOffers {
  const _$FetchOffersImpl() : super._();

  @override
  String toString() {
    return 'OffersEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchOffersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOffers value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOffers value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOffers value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchOffers extends OffersEvent {
  const factory _FetchOffers() = _$FetchOffersImpl;
  const _FetchOffers._() : super._();
}

/// @nodoc
mixin _$OffersState {
  List<Offer> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Offer> data, String message) processing,
    required TResult Function(List<Offer> data, String message) successful,
    required TResult Function(List<Offer> data, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Offer> data, String message)? processing,
    TResult? Function(List<Offer> data, String message)? successful,
    TResult? Function(List<Offer> data, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Offer> data, String message)? processing,
    TResult Function(List<Offer> data, String message)? successful,
    TResult Function(List<Offer> data, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessingOffersState value) processing,
    required TResult Function(_SuccessfulOffersState value) successful,
    required TResult Function(_ErrorOffersState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingOffersState value)? processing,
    TResult? Function(_SuccessfulOffersState value)? successful,
    TResult? Function(_ErrorOffersState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingOffersState value)? processing,
    TResult Function(_SuccessfulOffersState value)? successful,
    TResult Function(_ErrorOffersState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffersStateCopyWith<OffersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersStateCopyWith<$Res> {
  factory $OffersStateCopyWith(
          OffersState value, $Res Function(OffersState) then) =
      _$OffersStateCopyWithImpl<$Res, OffersState>;
  @useResult
  $Res call({List<Offer> data, String message});
}

/// @nodoc
class _$OffersStateCopyWithImpl<$Res, $Val extends OffersState>
    implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcessingOffersStateImplCopyWith<$Res>
    implements $OffersStateCopyWith<$Res> {
  factory _$$ProcessingOffersStateImplCopyWith(
          _$ProcessingOffersStateImpl value,
          $Res Function(_$ProcessingOffersStateImpl) then) =
      __$$ProcessingOffersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offer> data, String message});
}

/// @nodoc
class __$$ProcessingOffersStateImplCopyWithImpl<$Res>
    extends _$OffersStateCopyWithImpl<$Res, _$ProcessingOffersStateImpl>
    implements _$$ProcessingOffersStateImplCopyWith<$Res> {
  __$$ProcessingOffersStateImplCopyWithImpl(_$ProcessingOffersStateImpl _value,
      $Res Function(_$ProcessingOffersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$ProcessingOffersStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessingOffersStateImpl extends _ProcessingOffersState {
  const _$ProcessingOffersStateImpl(
      {required final List<Offer> data, this.message = 'Processing'})
      : _data = data,
        super._();

  final List<Offer> _data;
  @override
  List<Offer> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'OffersState.processing(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingOffersStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingOffersStateImplCopyWith<_$ProcessingOffersStateImpl>
      get copyWith => __$$ProcessingOffersStateImplCopyWithImpl<
          _$ProcessingOffersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Offer> data, String message) processing,
    required TResult Function(List<Offer> data, String message) successful,
    required TResult Function(List<Offer> data, String message) error,
  }) {
    return processing(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Offer> data, String message)? processing,
    TResult? Function(List<Offer> data, String message)? successful,
    TResult? Function(List<Offer> data, String message)? error,
  }) {
    return processing?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Offer> data, String message)? processing,
    TResult Function(List<Offer> data, String message)? successful,
    TResult Function(List<Offer> data, String message)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessingOffersState value) processing,
    required TResult Function(_SuccessfulOffersState value) successful,
    required TResult Function(_ErrorOffersState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingOffersState value)? processing,
    TResult? Function(_SuccessfulOffersState value)? successful,
    TResult? Function(_ErrorOffersState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingOffersState value)? processing,
    TResult Function(_SuccessfulOffersState value)? successful,
    TResult Function(_ErrorOffersState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _ProcessingOffersState extends OffersState {
  const factory _ProcessingOffersState(
      {required final List<Offer> data,
      final String message}) = _$ProcessingOffersStateImpl;
  const _ProcessingOffersState._() : super._();

  @override
  List<Offer> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingOffersStateImplCopyWith<_$ProcessingOffersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfulOffersStateImplCopyWith<$Res>
    implements $OffersStateCopyWith<$Res> {
  factory _$$SuccessfulOffersStateImplCopyWith(
          _$SuccessfulOffersStateImpl value,
          $Res Function(_$SuccessfulOffersStateImpl) then) =
      __$$SuccessfulOffersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offer> data, String message});
}

/// @nodoc
class __$$SuccessfulOffersStateImplCopyWithImpl<$Res>
    extends _$OffersStateCopyWithImpl<$Res, _$SuccessfulOffersStateImpl>
    implements _$$SuccessfulOffersStateImplCopyWith<$Res> {
  __$$SuccessfulOffersStateImplCopyWithImpl(_$SuccessfulOffersStateImpl _value,
      $Res Function(_$SuccessfulOffersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$SuccessfulOffersStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessfulOffersStateImpl extends _SuccessfulOffersState {
  const _$SuccessfulOffersStateImpl(
      {required final List<Offer> data, this.message = 'Successful'})
      : _data = data,
        super._();

  final List<Offer> _data;
  @override
  List<Offer> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'OffersState.successful(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulOffersStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulOffersStateImplCopyWith<_$SuccessfulOffersStateImpl>
      get copyWith => __$$SuccessfulOffersStateImplCopyWithImpl<
          _$SuccessfulOffersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Offer> data, String message) processing,
    required TResult Function(List<Offer> data, String message) successful,
    required TResult Function(List<Offer> data, String message) error,
  }) {
    return successful(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Offer> data, String message)? processing,
    TResult? Function(List<Offer> data, String message)? successful,
    TResult? Function(List<Offer> data, String message)? error,
  }) {
    return successful?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Offer> data, String message)? processing,
    TResult Function(List<Offer> data, String message)? successful,
    TResult Function(List<Offer> data, String message)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessingOffersState value) processing,
    required TResult Function(_SuccessfulOffersState value) successful,
    required TResult Function(_ErrorOffersState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingOffersState value)? processing,
    TResult? Function(_SuccessfulOffersState value)? successful,
    TResult? Function(_ErrorOffersState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingOffersState value)? processing,
    TResult Function(_SuccessfulOffersState value)? successful,
    TResult Function(_ErrorOffersState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulOffersState extends OffersState {
  const factory _SuccessfulOffersState(
      {required final List<Offer> data,
      final String message}) = _$SuccessfulOffersStateImpl;
  const _SuccessfulOffersState._() : super._();

  @override
  List<Offer> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessfulOffersStateImplCopyWith<_$SuccessfulOffersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorOffersStateImplCopyWith<$Res>
    implements $OffersStateCopyWith<$Res> {
  factory _$$ErrorOffersStateImplCopyWith(_$ErrorOffersStateImpl value,
          $Res Function(_$ErrorOffersStateImpl) then) =
      __$$ErrorOffersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offer> data, String message});
}

/// @nodoc
class __$$ErrorOffersStateImplCopyWithImpl<$Res>
    extends _$OffersStateCopyWithImpl<$Res, _$ErrorOffersStateImpl>
    implements _$$ErrorOffersStateImplCopyWith<$Res> {
  __$$ErrorOffersStateImplCopyWithImpl(_$ErrorOffersStateImpl _value,
      $Res Function(_$ErrorOffersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$ErrorOffersStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorOffersStateImpl extends _ErrorOffersState {
  const _$ErrorOffersStateImpl(
      {required final List<Offer> data,
      this.message = 'An error has occurred.'})
      : _data = data,
        super._();

  final List<Offer> _data;
  @override
  List<Offer> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'OffersState.error(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorOffersStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorOffersStateImplCopyWith<_$ErrorOffersStateImpl> get copyWith =>
      __$$ErrorOffersStateImplCopyWithImpl<_$ErrorOffersStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Offer> data, String message) processing,
    required TResult Function(List<Offer> data, String message) successful,
    required TResult Function(List<Offer> data, String message) error,
  }) {
    return error(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Offer> data, String message)? processing,
    TResult? Function(List<Offer> data, String message)? successful,
    TResult? Function(List<Offer> data, String message)? error,
  }) {
    return error?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Offer> data, String message)? processing,
    TResult Function(List<Offer> data, String message)? successful,
    TResult Function(List<Offer> data, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessingOffersState value) processing,
    required TResult Function(_SuccessfulOffersState value) successful,
    required TResult Function(_ErrorOffersState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingOffersState value)? processing,
    TResult? Function(_SuccessfulOffersState value)? successful,
    TResult? Function(_ErrorOffersState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingOffersState value)? processing,
    TResult Function(_SuccessfulOffersState value)? successful,
    TResult Function(_ErrorOffersState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorOffersState extends OffersState {
  const factory _ErrorOffersState(
      {required final List<Offer> data,
      final String message}) = _$ErrorOffersStateImpl;
  const _ErrorOffersState._() : super._();

  @override
  List<Offer> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorOffersStateImplCopyWith<_$ErrorOffersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
