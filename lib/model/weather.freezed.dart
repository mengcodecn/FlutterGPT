// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  String get cityName => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({String cityName, double temperature});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? temperature = null,
  }) {
    return _then(_value.copyWith(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cityName, double temperature});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? temperature = null,
  }) {
    return _then(_$_Weather(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather implements _Weather {
  const _$_Weather({required this.cityName, required this.temperature});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final String cityName;
  @override
  final double temperature;

  @override
  String toString() {
    return 'Weather(cityName: $cityName, temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cityName, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final String cityName,
      required final double temperature}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  String get cityName;
  @override
  double get temperature;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) loaded,
    required TResult Function(String error) error,
    required TResult Function() end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather weather)? initial,
    TResult? Function()? loading,
    TResult? Function(Weather weather)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(String error)? error,
    TResult Function()? end,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
    required TResult Function(WeatherEnd value) end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
    TResult? Function(WeatherEnd value)? end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    TResult Function(WeatherEnd value)? end,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherInitialCopyWith<$Res> {
  factory _$$WeatherInitialCopyWith(
          _$WeatherInitial value, $Res Function(_$WeatherInitial) then) =
      __$$WeatherInitialCopyWithImpl<$Res>;
  @useResult
  $Res call({Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$WeatherInitialCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherInitial>
    implements _$$WeatherInitialCopyWith<$Res> {
  __$$WeatherInitialCopyWithImpl(
      _$WeatherInitial _value, $Res Function(_$WeatherInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$WeatherInitial(
      null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc

class _$WeatherInitial implements WeatherInitial {
  const _$WeatherInitial(this.weather);

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherState.initial(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherInitial &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherInitialCopyWith<_$WeatherInitial> get copyWith =>
      __$$WeatherInitialCopyWithImpl<_$WeatherInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) loaded,
    required TResult Function(String error) error,
    required TResult Function() end,
  }) {
    return initial(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather weather)? initial,
    TResult? Function()? loading,
    TResult? Function(Weather weather)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? end,
  }) {
    return initial?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(String error)? error,
    TResult Function()? end,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
    required TResult Function(WeatherEnd value) end,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
    TResult? Function(WeatherEnd value)? end,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    TResult Function(WeatherEnd value)? end,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WeatherInitial implements WeatherState {
  const factory WeatherInitial(final Weather weather) = _$WeatherInitial;

  Weather get weather;
  @JsonKey(ignore: true)
  _$$WeatherInitialCopyWith<_$WeatherInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherLoadingCopyWith<$Res> {
  factory _$$WeatherLoadingCopyWith(
          _$WeatherLoading value, $Res Function(_$WeatherLoading) then) =
      __$$WeatherLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherLoadingCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoading>
    implements _$$WeatherLoadingCopyWith<$Res> {
  __$$WeatherLoadingCopyWithImpl(
      _$WeatherLoading _value, $Res Function(_$WeatherLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherLoading implements WeatherLoading {
  const _$WeatherLoading();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) loaded,
    required TResult Function(String error) error,
    required TResult Function() end,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather weather)? initial,
    TResult? Function()? loading,
    TResult? Function(Weather weather)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? end,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(String error)? error,
    TResult Function()? end,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
    required TResult Function(WeatherEnd value) end,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
    TResult? Function(WeatherEnd value)? end,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    TResult Function(WeatherEnd value)? end,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherLoading implements WeatherState {
  const factory WeatherLoading() = _$WeatherLoading;
}

/// @nodoc
abstract class _$$WeatherLoadedCopyWith<$Res> {
  factory _$$WeatherLoadedCopyWith(
          _$WeatherLoaded value, $Res Function(_$WeatherLoaded) then) =
      __$$WeatherLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$WeatherLoadedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoaded>
    implements _$$WeatherLoadedCopyWith<$Res> {
  __$$WeatherLoadedCopyWithImpl(
      _$WeatherLoaded _value, $Res Function(_$WeatherLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$WeatherLoaded(
      null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc

class _$WeatherLoaded implements WeatherLoaded {
  const _$WeatherLoaded(this.weather);

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherState.loaded(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLoaded &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLoadedCopyWith<_$WeatherLoaded> get copyWith =>
      __$$WeatherLoadedCopyWithImpl<_$WeatherLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) loaded,
    required TResult Function(String error) error,
    required TResult Function() end,
  }) {
    return loaded(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather weather)? initial,
    TResult? Function()? loading,
    TResult? Function(Weather weather)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? end,
  }) {
    return loaded?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(String error)? error,
    TResult Function()? end,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
    required TResult Function(WeatherEnd value) end,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
    TResult? Function(WeatherEnd value)? end,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    TResult Function(WeatherEnd value)? end,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WeatherLoaded implements WeatherState {
  const factory WeatherLoaded(final Weather weather) = _$WeatherLoaded;

  Weather get weather;
  @JsonKey(ignore: true)
  _$$WeatherLoadedCopyWith<_$WeatherLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherErrorCopyWith<$Res> {
  factory _$$WeatherErrorCopyWith(
          _$WeatherError value, $Res Function(_$WeatherError) then) =
      __$$WeatherErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$WeatherErrorCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherError>
    implements _$$WeatherErrorCopyWith<$Res> {
  __$$WeatherErrorCopyWithImpl(
      _$WeatherError _value, $Res Function(_$WeatherError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$WeatherError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherError implements WeatherError {
  const _$WeatherError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'WeatherState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherErrorCopyWith<_$WeatherError> get copyWith =>
      __$$WeatherErrorCopyWithImpl<_$WeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) loaded,
    required TResult Function(String error) error,
    required TResult Function() end,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather weather)? initial,
    TResult? Function()? loading,
    TResult? Function(Weather weather)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? end,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(String error)? error,
    TResult Function()? end,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
    required TResult Function(WeatherEnd value) end,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
    TResult? Function(WeatherEnd value)? end,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    TResult Function(WeatherEnd value)? end,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherError implements WeatherState {
  const factory WeatherError(final String error) = _$WeatherError;

  String get error;
  @JsonKey(ignore: true)
  _$$WeatherErrorCopyWith<_$WeatherError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherEndCopyWith<$Res> {
  factory _$$WeatherEndCopyWith(
          _$WeatherEnd value, $Res Function(_$WeatherEnd) then) =
      __$$WeatherEndCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherEndCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherEnd>
    implements _$$WeatherEndCopyWith<$Res> {
  __$$WeatherEndCopyWithImpl(
      _$WeatherEnd _value, $Res Function(_$WeatherEnd) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherEnd implements WeatherEnd {
  const _$WeatherEnd();

  @override
  String toString() {
    return 'WeatherState.end()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherEnd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) loaded,
    required TResult Function(String error) error,
    required TResult Function() end,
  }) {
    return end();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather weather)? initial,
    TResult? Function()? loading,
    TResult? Function(Weather weather)? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? end,
  }) {
    return end?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(String error)? error,
    TResult Function()? end,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
    required TResult Function(WeatherEnd value) end,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
    TResult? Function(WeatherEnd value)? end,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    TResult Function(WeatherEnd value)? end,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(this);
    }
    return orElse();
  }
}

abstract class WeatherEnd implements WeatherState {
  const factory WeatherEnd() = _$WeatherEnd;
}
