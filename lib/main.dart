import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Here we met main and runApp/MyApp option of the flow
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
//MaterialApp controls the fundamental UI design of the the app.
//It has various kinds of properties.
//It controls theme and color entire the app through ThemeData class
//debugShowCheckedModeBanner: it removes debug mode banner if 'false'.

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
      body: Text('Hello!Flutter'),
    );
  }
}
