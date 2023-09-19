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
  HomePage({super.key});

  var myItems = [
    {"image": "https://rabbil.com/files/mernS.png", "title": "Hasan"},
    {"image": "https://rabbil.com/files/mernS.png", "title": "Kalam"},
    {"image": "https://rabbil.com/files/mernS.png", "title": "Shafik"},
    {"image": "https://rabbil.com/files/mernS.png", "title": "Hamza"},
    {"image": "https://rabbil.com/files/mernS.png", "title": "Tuhin"},
    {"image": "https://rabbil.com/files/mernS.png", "title": "Amzad"},
    {"image": "https://rabbil.com/files/mernS.png", "title": "Nazmul"},
    {"image": "https://rabbil.com/files/mernS.png", "title": "Ali"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
      ),
      body: ListView.builder(
          itemCount: myItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 250,
                child: Image.network(
                  myItems[index]['image']!,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }),
    );
  }
}
