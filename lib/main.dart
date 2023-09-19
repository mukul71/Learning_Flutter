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
            isScrollable: true,
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
        // body: TabBarView(
        //   children: [
        //     Text(
        //       '1',
        //       style: TextStyle(color: Colors.red),
        //     ),
        //     Text('2', style: TextStyle(color: Colors.green)),
        //     Text('3', style: TextStyle(color: Colors.purpleAccent)),
        //     Text('4', style: TextStyle(color: Colors.amber)),
        //     Text('5', style: TextStyle(color: Colors.deepOrange)),
        //     Text('6', style: TextStyle(color: Colors.limeAccent)),
        //     Text('7', style: TextStyle(color: Colors.indigo)),
        //   ],
        // ),
      ),
    );
  }
}
