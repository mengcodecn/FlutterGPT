import 'package:flutter_gpt/model/weather.dart';
import 'package:flutter_gpt/notifier/weather_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gpt/repository/weather_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod/riverpod.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  late ProviderContainer container;
  late WeatherNotifier weatherNotifier;
  late MockWeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    container = ProviderContainer(
      overrides: [
        weatherRepositoryProvider.overrideWith((ref) => mockWeatherRepository),
      ],
    );
    weatherNotifier = container.read(weatherNotifierProvider.notifier);
  });

  tearDown(() {
    container.dispose();
  });

  test(
    '初始化的value是否正确',
    () {
      expect(container.read(weatherNotifierProvider), isA<WeatherState>());
      expect(container.read(weatherNotifierProvider), isA<WeatherInitial>());
      final weather = container.read(weatherNotifierProvider).maybeMap(
            initial: (value) => value.weather,
            orElse: () => null,
          );
      expect(weather, Weather(cityName: '', temperature: 0.0));
      final weatherData = container.read(weatherNotifierProvider).maybeWhen(
            initial: (weather) => weather,
            orElse: () => null,
          );
      expect(weatherData, Weather(cityName: '', temperature: 0.0));
      expect(container.read(weatherNotifierProvider) is! WeatherLoading, isTrue);
      expect(container.read(weatherNotifierProvider) is! WeatherLoaded, isTrue);
      expect(container.read(weatherNotifierProvider) is! WeatherError, isTrue);
      expect(container.read(weatherNotifierProvider) is! WeatherEnd, isTrue);
    },
  );

  group(
    '测试数据服务',
    () {
      void getBeijingWeatherData() {
        when(
          () => mockWeatherRepository.fetchWeather('Beijing'),
        ).thenAnswer((_) async {
          final weather = Weather(cityName: 'Beijing', temperature: 22.2);
          return weather;
        });
      }

      void getError() {
        when(
          () => mockWeatherRepository.fetchWeather('Shanghai'),
        ).thenAnswer((_) async {
          throw NetworkException();
        });
      }

      test('''

    1、获取数据的方法是否正确调用
    2、验证容器中的Provider的状态是否改变(相当于测试在Widget中的watch方法中的状态值是否改变)
    3、测试获取的数据是否和模拟的数据相同
          ''',
        () async {
          getBeijingWeatherData();
          final future = weatherNotifier.getWeather('Beijing');

          expect(container.read(weatherNotifierProvider) is WeatherLoading, true);
          await future;
          verify(() => mockWeatherRepository.fetchWeather('Beijing')).called(1);
          expect(container.read(weatherNotifierProvider) is WeatherLoaded, true);
          final weather = container.read(weatherNotifierProvider).maybeWhen(
                loaded: (weather) => weather,
                orElse: () => null,
              );
          expect(weather, Weather(cityName: 'Beijing', temperature: 22.2));
        },
      );

      test('''

    测试异常捕获
          ''',
        () async {
          getError();
          final future = weatherNotifier.getWeather('Shanghai');
          expect(container.read(weatherNotifierProvider) is WeatherLoading, true);
          await future;
          verify(() => mockWeatherRepository.fetchWeather('Shanghai')).called(1);
          expect(container.read(weatherNotifierProvider) is WeatherError, true);
          final errorMsg = container.read(weatherNotifierProvider).maybeWhen(
                error: (error) => error,
                orElse: () => null,
              );
          expect(errorMsg, 'Could not fetch weather.');
        },
      );
    },
  );
}
