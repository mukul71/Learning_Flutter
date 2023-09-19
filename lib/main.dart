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
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.mail),
                text: 'Mail',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.alarm),
                text: 'Alarm',
              ),
              Tab(
                icon: Icon(Icons.wallet),
                text: 'Wallet',
              ),
              Tab(
                icon: Icon(Icons.card_travel),
                text: 'Card',
              ),
              Tab(
                icon: Icon(Icons.account_balance),
                text: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
