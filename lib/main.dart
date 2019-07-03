import 'package:flutter/material.dart';
import 'package:weather/routes.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      initialRoute: '/',
      onGenerateRoute: RouteManager.generate,
    );
  }
}
