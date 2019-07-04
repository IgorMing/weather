import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  static const String routeName = '/weather';
  final String userName;

  Weather({this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Weather'),
      ),
      body: Container(
        // alignment: Alignment.topCenter,
        padding: EdgeInsets.all(20.0),
        child: Text(
          'Hello ${this.userName},',
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }
}
