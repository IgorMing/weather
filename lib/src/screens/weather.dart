import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  static const String routeName = '/weather';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('test'),
      ),
      body: Center(
        child: Text('Weather screen'),
      ),
    );
  }
}
