import 'package:flutter/material.dart';
import 'package:learning_flutter/Style.dart';

void main() {
  runApp(MyApp());
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

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageView();
  }
}

class HomePageView extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Numbers App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Sum is = ",
              style: HeadStyle(),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: AppInputs('First Number'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: AppInputs('Second Number'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                child: ElevatedButton(
              child: Text('Add'),
              onPressed: () {},
            )),
          ],
        ),
      ),
    );
  }
}
