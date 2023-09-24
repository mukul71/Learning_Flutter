import 'package:flutter/material.dart';

InputDecoration AppInputs(label) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    filled: true,
    fillColor: Colors.green,
    border: OutlineInputBorder(),
    labelText: label,
  );
}

TextStyle HeadStyle() {
  return TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
}
