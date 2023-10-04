//https://syntax007.hashnode.dev/a-step-by-step-guide-to-creating-a-basic-calculator-app-in-flutter
import 'package:flutter/material.dart';
import 'package:learning_flutter/calcButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage());
  }
}

//Widget class

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return calculatorViewState();
  }
}
//creating State Class

class calculatorViewState extends State<HomePage> {
  String equation = "0";
  String result = "0";
  String expression = "0";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttonText) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: Icon(
          Icons.settings,
          color: Colors.orange,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Text(
              'Deg',
              style:
                  TextStyle(color: Colors.white38, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            result,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 80),
                          ),
                        ),
                        const Icon(Icons.more_vert,
                            color: Colors.orange, size: 30),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            equation,
                            style:
                                TextStyle(fontSize: 40, color: Colors.white38),
                          ),
                        ),
                      ],
                    ),
                    // IconButton(
                    //   icon: const Icon(Icons.backspace_outlined,
                    //       color: Colors.orange, size: 30),
                    //   onPressed: () {
                    //     buttonPressed(("⌫"));
                    //   },
                    // ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('AC', Colors.white10, () => buttonPressed("Ac")),
                calcButton("%", Colors.white10, () => buttonPressed("%")),
                calcButton("÷", Colors.white10, () => buttonPressed("÷")),
                calcButton("X", Colors.white10, () => buttonPressed("X")),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("7", Colors.white24, () => buttonPressed('7')),
                calcButton('8', Colors.white24, () => buttonPressed('8')),
                calcButton('9', Colors.white24, () => buttonPressed('9')),
                calcButton('-', Colors.white24, () => buttonPressed('-'))
              ],
            ),
            const SizedBox(width: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('4', Colors.white24, () => buttonPressed('4')),
                calcButton('5', Colors.white24, () => buttonPressed('5')),
                calcButton('6', Colors.white24, () => buttonPressed('6')),
                calcButton('+', Colors.white24, () => buttonPressed('+')),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        calcButton(
                            '1', Colors.white24, () => buttonPressed('1')),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04),
                        calcButton(
                            '2', Colors.white24, () => buttonPressed('2')),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04),
                        calcButton(
                            '3', Colors.white24, () => buttonPressed('3')),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        calcButton(
                            '+/', Colors.white24, () => buttonPressed('+/')),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        calcButton(
                            '0', Colors.white24, () => buttonPressed('0')),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .04,
                        ),
                        calcButton(
                            '.', Colors.white24, () => buttonPressed('.'))
                      ],
                    ),
                  ],
                ),
                calcButton('=', Colors.orange, () => buttonPressed('=')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
