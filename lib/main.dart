import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text(
          'My New App',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar("Mail me", context);
              },
              icon: Icon(Icons.email_outlined)),
          IconButton(
              onPressed: () {
                mySnackBar('Write your comment here', context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                mySnackBar('This is Settings', context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                mySnackBar('Search here', context);
              },
              icon: Icon(Icons.search)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar('I am floating button', context);
        },
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School')
        ],
        onTap: (int index) {
          if (index == 0) {
            return mySnackBar('Business Section', context);
          } else if (index == 1) {
            return mySnackBar('At Home', context);
          } else {
            return mySnackBar('At School', context);
          }
        },
      ),
    );
  }
}

