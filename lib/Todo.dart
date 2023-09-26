import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return todoView();
  }
}

class todoView extends State<Todo> {
  List todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do App'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(child: TextFormField()),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add'),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Text('ListView'),
              flex: 90,
            ),
          ],
        ),
      ),
    );
  }
}
