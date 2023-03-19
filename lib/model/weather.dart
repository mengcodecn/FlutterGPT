import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather{
  const factory Weather({required String cityName,required double temperature}) = _Weather;
  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}


@freezed
class WeatherState with _$WeatherState{
  const factory WeatherState.initial(Weather weather) = WeatherInitial;
  const factory WeatherState.loading() = WeatherLoading;
  const factory WeatherState.loaded(Weather weather) = WeatherLoaded;
  const factory WeatherState.error(String error) = WeatherError;
  const factory WeatherState.end() = WeatherEnd;
}