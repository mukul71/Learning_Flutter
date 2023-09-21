import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fractional Sized Box'),
      ),
      body: Center(
        child: FractionallySizedBox(
          heightFactor: 0.3,
          widthFactor: 0.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
