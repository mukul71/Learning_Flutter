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
  Map<String, String> formValue = {"Num1": "", "Num2": "", "Num3": ""};

  @override
  Widget build(BuildContext context) {
    inputChangedValue(inputKey, inputValue) {
      setState(() {
        formValue.update(inputKey, (value) => inputValue);
      });
    }

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
              onChanged: (value) {
                inputChangedValue("Num1", value);
              },
              decoration: AppInputs('First Number'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) {
                inputChangedValue("Num2", value);
              },
              decoration: AppInputs('Second Number'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) {
                inputChangedValue("Num3", value);
              },
              decoration: AppInputs('Third Number'),
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
