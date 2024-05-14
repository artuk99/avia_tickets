// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendationsEvent {
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
    required TResult Function(_FetchRecommendations value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecommendations value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecommendations value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationsEventCopyWith<$Res> {
  factory $RecommendationsEventCopyWith(RecommendationsEvent value,
          $Res Function(RecommendationsEvent) then) =
      _$RecommendationsEventCopyWithImpl<$Res, RecommendationsEvent>;
}

/// @nodoc
class _$RecommendationsEventCopyWithImpl<$Res,
        $Val extends RecommendationsEvent>
    implements $RecommendationsEventCopyWith<$Res> {
  _$RecommendationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchRecommendationsImplCopyWith<$Res> {
  factory _$$FetchRecommendationsImplCopyWith(_$FetchRecommendationsImpl value,
          $Res Function(_$FetchRecommendationsImpl) then) =
      __$$FetchRecommendationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRecommendationsImplCopyWithImpl<$Res>
    extends _$RecommendationsEventCopyWithImpl<$Res, _$FetchRecommendationsImpl>
    implements _$$FetchRecommendationsImplCopyWith<$Res> {
  __$$FetchRecommendationsImplCopyWithImpl(_$FetchRecommendationsImpl _value,
      $Res Function(_$FetchRecommendationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchRecommendationsImpl extends _FetchRecommendations {
  const _$FetchRecommendationsImpl() : super._();

  @override
  String toString() {
    return 'RecommendationsEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecommendationsImpl);
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
    required TResult Function(_FetchRecommendations value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecommendations value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecommendations value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchRecommendations extends RecommendationsEvent {
  const factory _FetchRecommendations() = _$FetchRecommendationsImpl;
  const _FetchRecommendations._() : super._();
}

/// @nodoc
mixin _$RecommendationsState {
  List<TicketRecomendation> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TicketRecomendation> data, String message)
        processing,
    required TResult Function(List<TicketRecomendation> data, String message)
        successful,
    required TResult Function(List<TicketRecomendation> data, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TicketRecomendation> data, String message)?
        processing,
    TResult? Function(List<TicketRecomendation> data, String message)?
        successful,
    TResult? Function(List<TicketRecomendation> data, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TicketRecomendation> data, String message)?
        processing,
    TResult Function(List<TicketRecomendation> data, String message)?
        successful,
    TResult Function(List<TicketRecomendation> data, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessingState value) processing,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingState value)? processing,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingState value)? processing,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecommendationsStateCopyWith<RecommendationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationsStateCopyWith<$Res> {
  factory $RecommendationsStateCopyWith(RecommendationsState value,
          $Res Function(RecommendationsState) then) =
      _$RecommendationsStateCopyWithImpl<$Res, RecommendationsState>;
  @useResult
  $Res call({List<TicketRecomendation> data, String message});
}

/// @nodoc
class _$RecommendationsStateCopyWithImpl<$Res,
        $Val extends RecommendationsState>
    implements $RecommendationsStateCopyWith<$Res> {
  _$RecommendationsStateCopyWithImpl(this._value, this._then);

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
              as List<TicketRecomendation>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcessingStateImplCopyWith<$Res>
    implements $RecommendationsStateCopyWith<$Res> {
  factory _$$ProcessingStateImplCopyWith(_$ProcessingStateImpl value,
          $Res Function(_$ProcessingStateImpl) then) =
      __$$ProcessingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TicketRecomendation> data, String message});
}

/// @nodoc
class __$$ProcessingStateImplCopyWithImpl<$Res>
    extends _$RecommendationsStateCopyWithImpl<$Res, _$ProcessingStateImpl>
    implements _$$ProcessingStateImplCopyWith<$Res> {
  __$$ProcessingStateImplCopyWithImpl(
      _$ProcessingStateImpl _value, $Res Function(_$ProcessingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$ProcessingStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TicketRecomendation>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessingStateImpl extends _ProcessingState {
  const _$ProcessingStateImpl(
      {required final List<TicketRecomendation> data,
      this.message = 'Processing'})
      : _data = data,
        super._();

  final List<TicketRecomendation> _data;
  @override
  List<TicketRecomendation> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RecommendationsState.processing(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingStateImplCopyWith<_$ProcessingStateImpl> get copyWith =>
      __$$ProcessingStateImplCopyWithImpl<_$ProcessingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TicketRecomendation> data, String message)
        processing,
    required TResult Function(List<TicketRecomendation> data, String message)
        successful,
    required TResult Function(List<TicketRecomendation> data, String message)
        error,
  }) {
    return processing(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TicketRecomendation> data, String message)?
        processing,
    TResult? Function(List<TicketRecomendation> data, String message)?
        successful,
    TResult? Function(List<TicketRecomendation> data, String message)? error,
  }) {
    return processing?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TicketRecomendation> data, String message)?
        processing,
    TResult Function(List<TicketRecomendation> data, String message)?
        successful,
    TResult Function(List<TicketRecomendation> data, String message)? error,
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
    required TResult Function(_ProcessingState value) processing,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingState value)? processing,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingState value)? processing,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _ProcessingState extends RecommendationsState {
  const factory _ProcessingState(
      {required final List<TicketRecomendation> data,
      final String message}) = _$ProcessingStateImpl;
  const _ProcessingState._() : super._();

  @override
  List<TicketRecomendation> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingStateImplCopyWith<_$ProcessingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfulStateImplCopyWith<$Res>
    implements $RecommendationsStateCopyWith<$Res> {
  factory _$$SuccessfulStateImplCopyWith(_$SuccessfulStateImpl value,
          $Res Function(_$SuccessfulStateImpl) then) =
      __$$SuccessfulStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TicketRecomendation> data, String message});
}

/// @nodoc
class __$$SuccessfulStateImplCopyWithImpl<$Res>
    extends _$RecommendationsStateCopyWithImpl<$Res, _$SuccessfulStateImpl>
    implements _$$SuccessfulStateImplCopyWith<$Res> {
  __$$SuccessfulStateImplCopyWithImpl(
      _$SuccessfulStateImpl _value, $Res Function(_$SuccessfulStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$SuccessfulStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TicketRecomendation>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessfulStateImpl extends _SuccessfulState {
  const _$SuccessfulStateImpl(
      {required final List<TicketRecomendation> data,
      this.message = 'Successful'})
      : _data = data,
        super._();

  final List<TicketRecomendation> _data;
  @override
  List<TicketRecomendation> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RecommendationsState.successful(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulStateImplCopyWith<_$SuccessfulStateImpl> get copyWith =>
      __$$SuccessfulStateImplCopyWithImpl<_$SuccessfulStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TicketRecomendation> data, String message)
        processing,
    required TResult Function(List<TicketRecomendation> data, String message)
        successful,
    required TResult Function(List<TicketRecomendation> data, String message)
        error,
  }) {
    return successful(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TicketRecomendation> data, String message)?
        processing,
    TResult? Function(List<TicketRecomendation> data, String message)?
        successful,
    TResult? Function(List<TicketRecomendation> data, String message)? error,
  }) {
    return successful?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TicketRecomendation> data, String message)?
        processing,
    TResult Function(List<TicketRecomendation> data, String message)?
        successful,
    TResult Function(List<TicketRecomendation> data, String message)? error,
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
    required TResult Function(_ProcessingState value) processing,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingState value)? processing,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingState value)? processing,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulState extends RecommendationsState {
  const factory _SuccessfulState(
      {required final List<TicketRecomendation> data,
      final String message}) = _$SuccessfulStateImpl;
  const _SuccessfulState._() : super._();

  @override
  List<TicketRecomendation> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessfulStateImplCopyWith<_$SuccessfulStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res>
    implements $RecommendationsStateCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TicketRecomendation> data, String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$RecommendationsStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TicketRecomendation>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl extends _ErrorState {
  const _$ErrorStateImpl(
      {required final List<TicketRecomendation> data,
      this.message = 'An error has occurred.'})
      : _data = data,
        super._();

  final List<TicketRecomendation> _data;
  @override
  List<TicketRecomendation> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RecommendationsState.error(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TicketRecomendation> data, String message)
        processing,
    required TResult Function(List<TicketRecomendation> data, String message)
        successful,
    required TResult Function(List<TicketRecomendation> data, String message)
        error,
  }) {
    return error(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TicketRecomendation> data, String message)?
        processing,
    TResult? Function(List<TicketRecomendation> data, String message)?
        successful,
    TResult? Function(List<TicketRecomendation> data, String message)? error,
  }) {
    return error?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TicketRecomendation> data, String message)?
        processing,
    TResult Function(List<TicketRecomendation> data, String message)?
        successful,
    TResult Function(List<TicketRecomendation> data, String message)? error,
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
    required TResult Function(_ProcessingState value) processing,
    required TResult Function(_SuccessfulState value) successful,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessingState value)? processing,
    TResult? Function(_SuccessfulState value)? successful,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingState value)? processing,
    TResult Function(_SuccessfulState value)? successful,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends RecommendationsState {
  const factory _ErrorState(
      {required final List<TicketRecomendation> data,
      final String message}) = _$ErrorStateImpl;
  const _ErrorState._() : super._();

  @override
  List<TicketRecomendation> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
