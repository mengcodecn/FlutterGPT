import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gpt/model/weather.dart';
import 'dart:math';

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return FakeWeatherRepository();
});

abstract class WeatherRepository {
  Future<Weather> fetchWeather(String cityName);
}

class FakeWeatherRepository implements WeatherRepository {
  @override
  Future<Weather> fetchWeather(String cityName) {
    final random = Random();
    
    double temperature = 20 + random.nextInt(15) + random.nextDouble();
    return Future.delayed(Duration(seconds: 1), () {
      if (random.nextBool()) {
      throw NetworkException();  
    }
      return Weather(cityName: cityName, temperature: temperature);
    });
  }
}

class NetworkException implements Exception {}