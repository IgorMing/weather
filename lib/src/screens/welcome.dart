import 'package:flutter/material.dart';
import 'package:weather/src/screens/weather.dart';

class Welcome extends StatelessWidget {
  static const String routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome screen'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Weather.routeName);
              },
              child: Text('Navigate'),
            ),
          ],
        ),
      ),
    );
  }
}
