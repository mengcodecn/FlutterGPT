import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gpt/model/weather.dart';
import 'package:flutter_gpt/repository/weather_repository.dart';

final weatherNotifierProvider = StateNotifierProvider<WeatherNotifier, WeatherState>((ref) {
  final repositoryProvider = ref.watch(weatherRepositoryProvider);
  return WeatherNotifier(repositoryProvider);
});

class WeatherNotifier extends StateNotifier<WeatherState> {
  WeatherNotifier(
    this._weatherRepository,
  ) : super(WeatherState.initial(Weather(cityName: '',temperature: 0.0)));

  final WeatherRepository _weatherRepository;

  Future<void> getWeather(String cityName) async {
    try {
      state = WeatherState.loading();
      final weather = await _weatherRepository.fetchWeather(cityName);
      state = WeatherState.loaded(weather);
    } catch (e) {
      state = WeatherState.error('Could not fetch weather.');
    } 
  }
}
