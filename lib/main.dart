import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
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
          'Basic App',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar('Mail me', context);
              },
              icon: Icon(Icons.email_outlined)),
          IconButton(
              onPressed: () {
                mySnackBar('Leave a comment', context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                mySnackBar('Search here', context);
              },
              icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {
              mySnackBar('App Settings', context);
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar('Floating Action Button', context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School')
          ],
          onTap: (int index) {
            if (index == 0) {
              mySnackBar('At Business', context);
            } else if (index == 1) {
              mySnackBar('At Home', context);
            } else {
              mySnackBar('At School', context);
            }
          }),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text('Mukul Rahman'),
                accountEmail: Text('info@gamil.com'),
                currentAccountPicture: Image.network(
                    'https://media.licdn.com/dms/image/C4D12AQGN-i1zeCivGA/article-inline_image-shrink_1500_2232/0/1614519283776?e=1701302400&v=beta&t=19NLg_sbBkNB8ZdiotPMf_x1oNvX-d_cotcsWuwjKC4'),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Business'),
            ),
            ListTile(
              leading: Icon(Icons.school_outlined),
              title: Text('School'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Address'),
            )
          ],
        ),
      ),
    );
  }
}
