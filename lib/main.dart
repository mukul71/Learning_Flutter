import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

//Widget class

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeView();
  }
}
//creating State Class

class HomeView extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
