import 'package:flutter/material.dart';

InputDecoration AppInputs(label) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    filled: true,
    fillColor: Colors.green,
    border: OutlineInputBorder(),
    label: label,
  );
}
