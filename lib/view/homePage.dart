import 'package:flutter/material.dart';
import 'package:flutter_getx_crud/controller/homeController.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ToDoController homeController = Get.put(ToDoController());
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          TextFormField(

          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("TAPPED");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}