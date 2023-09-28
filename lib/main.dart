import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage());
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
        backgroundColor: Colors.black54,
        leading: Icon(
          Icons.settings,
          color: Colors.orange,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Text(
              'Deg',
              style:
                  TextStyle(color: Colors.white38, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
