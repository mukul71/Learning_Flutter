//master
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green,
          appBarTheme: AppBarTheme(backgroundColor: Colors.green,foregroundColor: Colors.white)),
      home: HomeScreen(),);
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    mySnackBar(message,context){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
          }
    return Scaffold(
      appBar: AppBar(title: Text('My App'),actions: [
        IconButton(onPressed: (){mySnackBar('Mail me', context);}, icon: Icon(Icons.email)),
        IconButton(onPressed: (){mySnackBar('Search here', context);}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){mySnackBar('Write your comment', context);}, icon: Icon(Icons.comment)),
        IconButton(onPressed: (){mySnackBar('Your settings', context);}, icon: Icon(Icons.settings)),
      ],),
    floatingActionButton: FloatingActionButton(onPressed: (){mySnackBar('This is FAB', context);},
      elevation: 15,
      child: Icon(Icons.add),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
    ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index){
          if(index ==0){
            mySnackBar("Home", context);
          }else if(index == 1){
            mySnackBar('Business', context);
          }else if(index ==2){
            mySnackBar('School', context);
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business),label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school),label: 'School'),
        ],
        
      ),
    );
  }
}
