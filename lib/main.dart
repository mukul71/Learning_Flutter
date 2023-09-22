import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

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
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Grid'),
      ),
      body: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            lg: 12,
            child: Container(
              height: 100,
              color: Colors.deepOrange,
            ),
          ),
          ResponsiveGridCol(
            xs: 12,
            sm: 9,
            md: 8,
            lg: 6,
            xl: 4,
            child: Container(
              height: 100,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
