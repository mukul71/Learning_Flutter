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
    return Scaffold(
      appBar: AppBar(
        title: Text('My Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('1')),
              ElevatedButton(onPressed: () {}, child: Text('2')),
              ElevatedButton(onPressed: () {}, child: Text('3')),
              ElevatedButton(onPressed: () {}, child: Text('+')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('4')),
              ElevatedButton(onPressed: () {}, child: Text('5')),
              ElevatedButton(onPressed: () {}, child: Text('6')),
              ElevatedButton(onPressed: () {}, child: Text('-')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('7')),
              ElevatedButton(onPressed: () {}, child: Text('8')),
              ElevatedButton(onPressed: () {}, child: Text('9')),
              ElevatedButton(onPressed: () {}, child: Text('/')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('0')),
              ElevatedButton(onPressed: () {}, child: Text('=')),
              ElevatedButton(onPressed: () {}, child: Text('%')),
              ElevatedButton(onPressed: () {}, child: Text('*')),
            ],
          ),
        ],
      ),
    );
  }
}
