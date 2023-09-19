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
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.mail),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
              Tab(
                icon: Icon(Icons.comment),
              ),
              Tab(
                icon: Icon(Icons.wallet),
              ),
              Tab(
                icon: Icon(Icons.card_travel),
              ),
              Tab(
                icon: Icon(Icons.account_balance),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
