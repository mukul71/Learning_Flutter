import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/style.dart';

class Todo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return todoView();
  }
}

class todoView extends State<Todo> {
  List todoList = [];
  String items = "";

  appInputOnChanged(content) {
    setState(() {
      todoList.add({"item": content});
    });
  }

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
                  Expanded(
                    flex: 80,
                    child: TextFormField(
                      onChanged: (content) {
                        appInputOnChanged(content);
                      },
                      decoration: appInputDecoration('List item'),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add'),
                      style: appButtonStyle(),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: appSizeBox(
                      Row(
                        children: [
                          Expanded(
                            flex: 70,
                            child: Text("Item"),
                          ),
                          Expanded(
                            flex: 30,
                            child: TextButton(
                              onPressed: () {},
                              child: Icon(Icons.delete),
                              style: appButtonStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
