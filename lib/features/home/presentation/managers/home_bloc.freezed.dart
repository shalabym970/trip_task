// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchTrips,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchTrips,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchTrips,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchTrips value) fetchTrips,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchTrips value)? fetchTrips,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchTrips value)? fetchTrips,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchTrips,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchTrips,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchTrips,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchTrips value) fetchTrips,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchTrips value)? fetchTrips,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchTrips value)? fetchTrips,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchTripsImplCopyWith<$Res> {
  factory _$$FetchTripsImplCopyWith(
    _$FetchTripsImpl value,
    $Res Function(_$FetchTripsImpl) then,
  ) = __$$FetchTripsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTripsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchTripsImpl>
    implements _$$FetchTripsImplCopyWith<$Res> {
  __$$FetchTripsImplCopyWithImpl(
    _$FetchTripsImpl _value,
    $Res Function(_$FetchTripsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTripsImpl implements _FetchTrips {
  const _$FetchTripsImpl();

  @override
  String toString() {
    return 'HomeEvent.fetchTrips()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTripsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchTrips,
  }) {
    return fetchTrips();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchTrips,
  }) {
    return fetchTrips?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchTrips,
    required TResult orElse(),
  }) {
    if (fetchTrips != null) {
      return fetchTrips();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchTrips value) fetchTrips,
  }) {
    return fetchTrips(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchTrips value)? fetchTrips,
  }) {
    return fetchTrips?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchTrips value)? fetchTrips,
    required TResult orElse(),
  }) {
    if (fetchTrips != null) {
      return fetchTrips(this);
    }
    return orElse();
  }
}

abstract class _FetchTrips implements HomeEvent {
  const factory _FetchTrips() = _$FetchTripsImpl;
}

/// @nodoc
mixin _$HomeState {
  bool get tripsLoading => throw _privateConstructorUsedError;
  List<TripEntity> get tripsList => throw _privateConstructorUsedError;
  String get tripsErrorMessage => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    bool tripsLoading,
    List<TripEntity> tripsList,
    String tripsErrorMessage,
  });
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripsLoading = null,
    Object? tripsList = null,
    Object? tripsErrorMessage = null,
  }) {
    return _then(
      _value.copyWith(
            tripsLoading:
                null == tripsLoading
                    ? _value.tripsLoading
                    : tripsLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            tripsList:
                null == tripsList
                    ? _value.tripsList
                    : tripsList // ignore: cast_nullable_to_non_nullable
                        as List<TripEntity>,
            tripsErrorMessage:
                null == tripsErrorMessage
                    ? _value.tripsErrorMessage
                    : tripsErrorMessage // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool tripsLoading,
    List<TripEntity> tripsList,
    String tripsErrorMessage,
  });
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripsLoading = null,
    Object? tripsList = null,
    Object? tripsErrorMessage = null,
  }) {
    return _then(
      _$HomeStateImpl(
        tripsLoading:
            null == tripsLoading
                ? _value.tripsLoading
                : tripsLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        tripsList:
            null == tripsList
                ? _value._tripsList
                : tripsList // ignore: cast_nullable_to_non_nullable
                    as List<TripEntity>,
        tripsErrorMessage:
            null == tripsErrorMessage
                ? _value.tripsErrorMessage
                : tripsErrorMessage // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({
    this.tripsLoading = false,
    final List<TripEntity> tripsList = const [],
    this.tripsErrorMessage = '',
  }) : _tripsList = tripsList;

  @override
  @JsonKey()
  final bool tripsLoading;
  final List<TripEntity> _tripsList;
  @override
  @JsonKey()
  List<TripEntity> get tripsList {
    if (_tripsList is EqualUnmodifiableListView) return _tripsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripsList);
  }

  @override
  @JsonKey()
  final String tripsErrorMessage;

  @override
  String toString() {
    return 'HomeState(tripsLoading: $tripsLoading, tripsList: $tripsList, tripsErrorMessage: $tripsErrorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.tripsLoading, tripsLoading) ||
                other.tripsLoading == tripsLoading) &&
            const DeepCollectionEquality().equals(
              other._tripsList,
              _tripsList,
            ) &&
            (identical(other.tripsErrorMessage, tripsErrorMessage) ||
                other.tripsErrorMessage == tripsErrorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tripsLoading,
    const DeepCollectionEquality().hash(_tripsList),
    tripsErrorMessage,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    final bool tripsLoading,
    final List<TripEntity> tripsList,
    final String tripsErrorMessage,
  }) = _$HomeStateImpl;

  @override
  bool get tripsLoading;
  @override
  List<TripEntity> get tripsList;
  @override
  String get tripsErrorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
