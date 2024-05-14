// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketsEvent {
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
    required TResult Function(_FetchTickets value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTickets value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTickets value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsEventCopyWith<$Res> {
  factory $TicketsEventCopyWith(
          TicketsEvent value, $Res Function(TicketsEvent) then) =
      _$TicketsEventCopyWithImpl<$Res, TicketsEvent>;
}

/// @nodoc
class _$TicketsEventCopyWithImpl<$Res, $Val extends TicketsEvent>
    implements $TicketsEventCopyWith<$Res> {
  _$TicketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchTicketsImplCopyWith<$Res> {
  factory _$$FetchTicketsImplCopyWith(
          _$FetchTicketsImpl value, $Res Function(_$FetchTicketsImpl) then) =
      __$$FetchTicketsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTicketsImplCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$FetchTicketsImpl>
    implements _$$FetchTicketsImplCopyWith<$Res> {
  __$$FetchTicketsImplCopyWithImpl(
      _$FetchTicketsImpl _value, $Res Function(_$FetchTicketsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTicketsImpl extends _FetchTickets {
  const _$FetchTicketsImpl() : super._();

  @override
  String toString() {
    return 'TicketsEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTicketsImpl);
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
    required TResult Function(_FetchTickets value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTickets value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTickets value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchTickets extends TicketsEvent {
  const factory _FetchTickets() = _$FetchTicketsImpl;
  const _FetchTickets._() : super._();
}

/// @nodoc
mixin _$TicketsState {
  List<Ticket> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ticket> data, String message) processing,
    required TResult Function(List<Ticket> data, String message) successful,
    required TResult Function(List<Ticket> data, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ticket> data, String message)? processing,
    TResult? Function(List<Ticket> data, String message)? successful,
    TResult? Function(List<Ticket> data, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ticket> data, String message)? processing,
    TResult Function(List<Ticket> data, String message)? successful,
    TResult Function(List<Ticket> data, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessingTicketsState value) processing,
    required TResult Function(_SuccessfulTicketsState value) successful,
    required TResult Function(_ErrorTicketsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingTicketsState value)? processing,
    TResult? Function(_SuccessfulTicketsState value)? successful,
    TResult? Function(_ErrorTicketsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingTicketsState value)? processing,
    TResult Function(_SuccessfulTicketsState value)? successful,
    TResult Function(_ErrorTicketsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsStateCopyWith<TicketsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsStateCopyWith<$Res> {
  factory $TicketsStateCopyWith(
          TicketsState value, $Res Function(TicketsState) then) =
      _$TicketsStateCopyWithImpl<$Res, TicketsState>;
  @useResult
  $Res call({List<Ticket> data, String message});
}

/// @nodoc
class _$TicketsStateCopyWithImpl<$Res, $Val extends TicketsState>
    implements $TicketsStateCopyWith<$Res> {
  _$TicketsStateCopyWithImpl(this._value, this._then);

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
              as List<Ticket>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcessingTicketsStateImplCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$ProcessingTicketsStateImplCopyWith(
          _$ProcessingTicketsStateImpl value,
          $Res Function(_$ProcessingTicketsStateImpl) then) =
      __$$ProcessingTicketsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ticket> data, String message});
}

/// @nodoc
class __$$ProcessingTicketsStateImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$ProcessingTicketsStateImpl>
    implements _$$ProcessingTicketsStateImplCopyWith<$Res> {
  __$$ProcessingTicketsStateImplCopyWithImpl(
      _$ProcessingTicketsStateImpl _value,
      $Res Function(_$ProcessingTicketsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$ProcessingTicketsStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessingTicketsStateImpl extends _ProcessingTicketsState {
  const _$ProcessingTicketsStateImpl(
      {required final List<Ticket> data, this.message = 'Processing'})
      : _data = data,
        super._();

  final List<Ticket> _data;
  @override
  List<Ticket> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TicketsState.processing(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingTicketsStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingTicketsStateImplCopyWith<_$ProcessingTicketsStateImpl>
      get copyWith => __$$ProcessingTicketsStateImplCopyWithImpl<
          _$ProcessingTicketsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ticket> data, String message) processing,
    required TResult Function(List<Ticket> data, String message) successful,
    required TResult Function(List<Ticket> data, String message) error,
  }) {
    return processing(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ticket> data, String message)? processing,
    TResult? Function(List<Ticket> data, String message)? successful,
    TResult? Function(List<Ticket> data, String message)? error,
  }) {
    return processing?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ticket> data, String message)? processing,
    TResult Function(List<Ticket> data, String message)? successful,
    TResult Function(List<Ticket> data, String message)? error,
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
    required TResult Function(_ProcessingTicketsState value) processing,
    required TResult Function(_SuccessfulTicketsState value) successful,
    required TResult Function(_ErrorTicketsState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingTicketsState value)? processing,
    TResult? Function(_SuccessfulTicketsState value)? successful,
    TResult? Function(_ErrorTicketsState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingTicketsState value)? processing,
    TResult Function(_SuccessfulTicketsState value)? successful,
    TResult Function(_ErrorTicketsState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _ProcessingTicketsState extends TicketsState {
  const factory _ProcessingTicketsState(
      {required final List<Ticket> data,
      final String message}) = _$ProcessingTicketsStateImpl;
  const _ProcessingTicketsState._() : super._();

  @override
  List<Ticket> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingTicketsStateImplCopyWith<_$ProcessingTicketsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfulTicketsStateImplCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$SuccessfulTicketsStateImplCopyWith(
          _$SuccessfulTicketsStateImpl value,
          $Res Function(_$SuccessfulTicketsStateImpl) then) =
      __$$SuccessfulTicketsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ticket> data, String message});
}

/// @nodoc
class __$$SuccessfulTicketsStateImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$SuccessfulTicketsStateImpl>
    implements _$$SuccessfulTicketsStateImplCopyWith<$Res> {
  __$$SuccessfulTicketsStateImplCopyWithImpl(
      _$SuccessfulTicketsStateImpl _value,
      $Res Function(_$SuccessfulTicketsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$SuccessfulTicketsStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessfulTicketsStateImpl extends _SuccessfulTicketsState {
  const _$SuccessfulTicketsStateImpl(
      {required final List<Ticket> data, this.message = 'Successful'})
      : _data = data,
        super._();

  final List<Ticket> _data;
  @override
  List<Ticket> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TicketsState.successful(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulTicketsStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulTicketsStateImplCopyWith<_$SuccessfulTicketsStateImpl>
      get copyWith => __$$SuccessfulTicketsStateImplCopyWithImpl<
          _$SuccessfulTicketsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ticket> data, String message) processing,
    required TResult Function(List<Ticket> data, String message) successful,
    required TResult Function(List<Ticket> data, String message) error,
  }) {
    return successful(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ticket> data, String message)? processing,
    TResult? Function(List<Ticket> data, String message)? successful,
    TResult? Function(List<Ticket> data, String message)? error,
  }) {
    return successful?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ticket> data, String message)? processing,
    TResult Function(List<Ticket> data, String message)? successful,
    TResult Function(List<Ticket> data, String message)? error,
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
    required TResult Function(_ProcessingTicketsState value) processing,
    required TResult Function(_SuccessfulTicketsState value) successful,
    required TResult Function(_ErrorTicketsState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingTicketsState value)? processing,
    TResult? Function(_SuccessfulTicketsState value)? successful,
    TResult? Function(_ErrorTicketsState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingTicketsState value)? processing,
    TResult Function(_SuccessfulTicketsState value)? successful,
    TResult Function(_ErrorTicketsState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulTicketsState extends TicketsState {
  const factory _SuccessfulTicketsState(
      {required final List<Ticket> data,
      final String message}) = _$SuccessfulTicketsStateImpl;
  const _SuccessfulTicketsState._() : super._();

  @override
  List<Ticket> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessfulTicketsStateImplCopyWith<_$SuccessfulTicketsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorTicketsStateImplCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$ErrorTicketsStateImplCopyWith(_$ErrorTicketsStateImpl value,
          $Res Function(_$ErrorTicketsStateImpl) then) =
      __$$ErrorTicketsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ticket> data, String message});
}

/// @nodoc
class __$$ErrorTicketsStateImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$ErrorTicketsStateImpl>
    implements _$$ErrorTicketsStateImplCopyWith<$Res> {
  __$$ErrorTicketsStateImplCopyWithImpl(_$ErrorTicketsStateImpl _value,
      $Res Function(_$ErrorTicketsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$ErrorTicketsStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorTicketsStateImpl extends _ErrorTicketsState {
  const _$ErrorTicketsStateImpl(
      {required final List<Ticket> data,
      this.message = 'An error has occurred.'})
      : _data = data,
        super._();

  final List<Ticket> _data;
  @override
  List<Ticket> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TicketsState.error(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorTicketsStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorTicketsStateImplCopyWith<_$ErrorTicketsStateImpl> get copyWith =>
      __$$ErrorTicketsStateImplCopyWithImpl<_$ErrorTicketsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ticket> data, String message) processing,
    required TResult Function(List<Ticket> data, String message) successful,
    required TResult Function(List<Ticket> data, String message) error,
  }) {
    return error(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ticket> data, String message)? processing,
    TResult? Function(List<Ticket> data, String message)? successful,
    TResult? Function(List<Ticket> data, String message)? error,
  }) {
    return error?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ticket> data, String message)? processing,
    TResult Function(List<Ticket> data, String message)? successful,
    TResult Function(List<Ticket> data, String message)? error,
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
    required TResult Function(_ProcessingTicketsState value) processing,
    required TResult Function(_SuccessfulTicketsState value) successful,
    required TResult Function(_ErrorTicketsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingTicketsState value)? processing,
    TResult? Function(_SuccessfulTicketsState value)? successful,
    TResult? Function(_ErrorTicketsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingTicketsState value)? processing,
    TResult Function(_SuccessfulTicketsState value)? successful,
    TResult Function(_ErrorTicketsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorTicketsState extends TicketsState {
  const factory _ErrorTicketsState(
      {required final List<Ticket> data,
      final String message}) = _$ErrorTicketsStateImpl;
  const _ErrorTicketsState._() : super._();

  @override
  List<Ticket> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorTicketsStateImplCopyWith<_$ErrorTicketsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
