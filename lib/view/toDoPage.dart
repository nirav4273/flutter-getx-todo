import 'package:flutter/material.dart';
import 'package:flutter_getx_crud/controller/homeController.dart';
import 'package:flutter_getx_crud/model/toDoModel.dart';
import 'package:get/get.dart';

class ToDoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final toDoController = Get.put(ToDoController());

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo's"),
      ),
      body: Column(
        children: [
          Container(
            child: TextFormField(
              controller: toDoController.controller,
            ),
          ),
          ElevatedButton(
            child: Text("Add"),
            onPressed: () {
              toDoController.addToDo(ToDoModel(
                  isArchived: false,
                  isCompleted: false,
                  title: toDoController.controller.text,
                  id: 1));
              toDoController.controller.text = "";
            },
          ),
          Expanded(
            child: Obx(() {
              List<ToDoModel> toDos = toDoController.toDos;
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(toDos[index].title),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {
                        toDoController.removeItem(index);
                      },
                    ),
                  );
                },
                itemCount: toDoController.toDos.length,
              );
            }),
          )
        ],
      ),
    );
  }
}
