import 'package:flutter/material.dart';
import 'package:weather/src/screens/weather.dart';
import 'package:weather/src/widgets/input_text.dart';
import 'package:geolocator/geolocator.dart';

class Welcome extends StatelessWidget {
  static const String routeName = '/welcome';

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<Position> _askLocationPermission() async {
      try {
        return await Geolocator()
            .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      } catch (e) {
        return null;
      }
    }

    void _navigate(Position position) {
      Navigator.of(context).pushNamed(
        Weather.routeName,
        arguments: Weather(
          userName: this._controller.text,
          position: position,
        ),
      );
    }

    Future<void> _showModal() {
      return showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext buildContext) {
            return AlertDialog(
              title: Text("Permission not granted"),
              content: SingleChildScrollView(
                child: Text(
                    "Make sure you have your GPS turned on, and allow the app location permission."),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("OK"),
                  onPressed: Navigator.of(context).pop,
                )
              ],
            );
          });
    }

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: InputText(
          'Type your name',
          controller: this._controller,
          onConfirm: () async {
            Position position = await _askLocationPermission();
            position == null ? _showModal() : _navigate(position);
          },
        ),
      ),
    );
  }
}
