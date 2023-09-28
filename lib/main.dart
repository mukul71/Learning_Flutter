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
              ElevatedButton(
                onPressed: () {},
                child: Text('1'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(15),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('2'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('3'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('+'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('4'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('5'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('6'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('-'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('7'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('8'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('9'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('/'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('0'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('='),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('%'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('*'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
