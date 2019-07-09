import 'package:flutter/material.dart';

import 'package:weather/src/screens/error.dart';
import 'package:weather/src/screens/weather.dart';
import 'package:weather/src/screens/welcome.dart';

class RouteManager {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      case Welcome.routeName:
        return MaterialPageRoute(
          builder: (_) => Welcome(),
        );
      case Weather.routeName:
        final Weather args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => Weather(
                userName: args.userName,
                position: args.position,
              ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Error(),
        );
    }
  }
}

/*
 import 'package:flutter/material.dart';

import 'package:tasks_app/src/screens/home.dart';
import 'package:tasks_app/src/screens/details.dart';

class RouterGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      case Home.routeName:
        return MaterialPageRoute(builder: (_) => Home());
      case Details.routeName:
        final Details args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => Details(
                onSave: args.onSave,
              ),
        );
      case Details.routeNameEdit:
        final Details args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => Details.edit(
                onSave: args.onSave,
                name: args.name,
                description: args.description,
                isReady: args.isReady,
              ),
        );
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Center(
        child: Text("Error"),
      ),
    );
  });
}
*/
