import 'package:flutter/material.dart';
import 'package:weather/src/screens/weather.dart';
import 'package:weather/src/widgets/input_text.dart';

class Welcome extends StatelessWidget {
  static const String routeName = '/welcome';

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: InputText(
          'Type your name',
          controller: this._controller,
          onConfirm: () {
            Navigator.of(context).pushNamed(
              Weather.routeName,
              arguments: Weather(
                userName: this._controller.text,
              ),
            );
          },
        ),
      ),
    );
  }
}
