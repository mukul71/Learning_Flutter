import 'package:flutter/material.dart';

InputDecoration AppInputs(label) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(),
    labelText: label,
  );
}

TextStyle HeadStyle() {
  return TextStyle(fontSize: 20, fontWeight: FontWeight.w800);
}

ButtonStyle appButtonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
  );
}
