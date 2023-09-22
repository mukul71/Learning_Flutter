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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 4,
              lg: 3,
              xl: 2,
              child: Container(
                height: 100,
                color: Colors.deepOrange,
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 4,
              lg: 3,
              xl: 2,
              child: Container(
                height: 100,
                color: Colors.pink,
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 4,
              lg: 3,
              xl: 2,
              child: Container(
                height: 100,
                color: Colors.lightGreenAccent,
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 4,
              lg: 3,
              xl: 2,
              child: Container(
                height: 100,
                color: Colors.orange,
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 4,
              lg: 3,
              xl: 2,
              child: Container(
                height: 100,
                color: Colors.red,
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              sm: 6,
              md: 4,
              lg: 3,
              xl: 2,
              child: Container(
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
