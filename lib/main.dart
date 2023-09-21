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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.purple,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.orange,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.limeAccent,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple,
              ),
            ],
          ),
        ));
  }
}
