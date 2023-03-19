import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gpt/page/center_page.dart';
import 'package:flutter_gpt/page/list_page.dart';
import 'package:flutter_gpt/page/weather_page.dart';

void main() {
  usePathUrlStrategy();
  runApp(ProviderScope(child: HcsApp()));
}

class HcsApp extends StatelessWidget {
  const HcsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(useMaterial3: true),
      title: 'Weather APP',
    );
  }
}

final _router = GoRouter(
  // initialLocation: '/center',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => WeatherPage(),
      routes: [
        GoRoute(
          path: 'list',
          name: 'list',
          builder: (context, state) => ListPage(),
        )
      ],
    ),
    GoRoute(
      path: '/center',
      name: 'center',
      builder: (context, state) => CenterPage(),
    ),
  ],
);
