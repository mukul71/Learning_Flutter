//We will go through flutter app flow as a skeleton here.
//we discussed about app flow in lesson 1

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Here we met main and runApp/MyApp option of the flow
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    ); // We met the MaterialApp here
    //wee also see the home option here
  }
}

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
//Here met the widget Scaffold
//we also made an appbar and wrote Hello... in the body of the app.
//Basic skeleton of our app is now ready to go with for update and edit
// as per our requirement.
