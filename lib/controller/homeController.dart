import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_crud/model/toDoModel.dart';
import 'package:get/get.dart';

class ToDoController extends GetxController {
  RxList<ToDoModel> toDos = <ToDoModel>[].obs;
  TextEditingController controller = TextEditingController();

  addToDo(ToDoModel toDoModel) {
    toDos.add(toDoModel);
  }
  removeItem(int index) {
    toDos.removeAt(index);
  }
}
