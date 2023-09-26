import 'package:flutter/material.dart';

InputDecoration appInputDecoration(label) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
    border: OutlineInputBorder(),
    labelText: label,
  );
}

ButtonStyle appButtonStyle() {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(22),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );
}
