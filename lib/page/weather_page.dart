import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gpt/model/weather.dart';
import 'package:flutter_gpt/notifier/weather_notifier.dart';

class WeatherPage extends ConsumerWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(weatherNotifierProvider);
    ref.listen<WeatherState>(weatherNotifierProvider, ((previous, next) {
      next.map(
        initial: (weatherState) {},
        loading: (weatherState) {},
        loaded: (weatherState) {},
        error: (weatherState) {
          final snackBar = SnackBar(content: Text(weatherState.error));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        end: (weatherState) {},
      );
    }));
    return Scaffold(
      appBar: AppBar(title: Text('Weather Search')),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: weatherState.when(initial: (weather) {
          return buildInitialInput();
        }, loading: () {
          return buildLoading();
        }, loaded: (weather) {
          return buildWeatherDisplay(weather);
        }, error: (error) {
          return buildInitialInput();
        }, end: () {
          return buildInitialInput();
        }),
      ),
    );
  }
}

Widget buildLoading() {
  return Center(
    child: CircularProgressIndicator(),
  );
}

Widget buildInitialInput() {
  return Center(
    child: CityInputField(),
  );
}

Widget buildWeatherDisplay(Weather weather) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        weather.cityName,
        style: TextStyle(color: Colors.blueGrey, fontSize: 40),
      ),
      Text(
        '${weather.temperature.toStringAsFixed(1)} C',
        style: TextStyle(fontSize: 80),
      ),
      CityInputField(),
    ],
  );
}

class CityInputField extends ConsumerWidget {
  const CityInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: TextField(
            onSubmitted: (value) {
              ref.read(weatherNotifierProvider.notifier).getWeather(value);
            },
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: 'Enter a city',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              suffix: Icon(Icons.search),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              context.goNamed('list');
            },
            child: Text('list')),
      ],
    );
  }
}
