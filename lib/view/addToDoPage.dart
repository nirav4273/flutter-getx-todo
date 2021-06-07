import 'package:flutter/material.dart';
import 'package:flutter_getx_crud/controller/homeController.dart';
import 'package:flutter_getx_crud/model/toDoModel.dart';
import 'package:get/get.dart';

class AddToDoPage extends StatefulWidget {
  @override
  _AddToDoPageState createState() => _AddToDoPageState();
}

class _AddToDoPageState extends State<AddToDoPage> {
  TextEditingController titleController = TextEditingController();

  onAdd(BuildContext context) {
    final controller = Get.find<ToDoController>();
    ToDoModel toDoModel = ToDoModel(isArchived: false, isCompleted: false, title: titleController.text, id: controller.toDos.length+1);

    controller.addToDo(toDoModel);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ToDo added successfully")));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add ToDo"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextFormField(
              minLines: 1,
              maxLines: 3,
              controller: titleController,
              decoration: InputDecoration(hintText: "Enter to-do details.."),
            ),
            ElevatedButton(
              onPressed: () {
                onAdd(context);
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text("Add"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
