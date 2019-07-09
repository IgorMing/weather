import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Weather extends StatelessWidget {
  static const String routeName = '/weather';
  final String userName;
  final Position position;

  Weather({
    @required this.userName,
    @required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Weather'),
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                'Hello ${this.userName},',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              Text(
                'Lat lon ${position.latitude} ${position.longitude},',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ],
          )),
    );
  }
}
