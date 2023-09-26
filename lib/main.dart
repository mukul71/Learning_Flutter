import 'package:flutter/material.dart';
import 'package:learning_flutter/Todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do',
      theme: ThemeData(primaryColor: Colors.green),
      home: Todo(),
    );
  }
}
