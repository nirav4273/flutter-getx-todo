import 'package:flutter/material.dart';
import 'package:flutter_getx_crud/view/homePage.dart';
import 'package:flutter_getx_crud/view/toDoPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoPage(),
      title: "Flutter GetX",
    );
  }
}

