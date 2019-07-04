import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String placeholder;
  final Function onConfirm;
  final TextEditingController controller;

  InputText(this.placeholder, {this.onConfirm, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      autocorrect: false,
      controller: this.controller,
      textCapitalization: TextCapitalization.none,
      cursorRadius: const Radius.circular(20.0),
      decoration: InputDecoration(
        labelText: this.placeholder,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onEditingComplete: this.onConfirm,
    );
  }
}
