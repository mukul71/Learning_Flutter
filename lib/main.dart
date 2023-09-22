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
        title: Text('Flexible'),
      ),
      body: Column(
        //we can use Row inplace of column
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 25,
            child: Container(
              color: Colors.lime,
            ),
          ),
          Flexible(
            flex: 20,
            child: Container(
              color: Colors.orange,
            ),
          ),
          Flexible(
            flex: 15,
            child: Container(
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
