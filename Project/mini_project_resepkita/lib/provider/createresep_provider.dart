import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/createresep/models/create_model.dart';

class TodoListProvider with ChangeNotifier {
  List<TodoModel> _todoidlist = [];
  final TextEditingController _todoController = TextEditingController();
  final TextEditingController _todo2controller = TextEditingController();
  /////////////////////////////
  final TextEditingController _todo3controller = TextEditingController();

  /// underscroe provate field
  ///getter untuk mengambil todolist
  List<TodoModel> get todoidList => _todoidlist;
  TextEditingController get todoController => _todoController;
  TextEditingController get todo2Controller => _todo2controller;
  ////////////////////////////
  TextEditingController get todo3Controller => _todo3controller;

  ///nmabah todo
  void addTodo(TodoModel TodoModel) {
    _todoidlist.add(TodoModel);
    _todoController.clear();
    _todo2controller.clear();
    ////////////////
     _todo3controller.clear();
    notifyListeners();
  }

  void removeTodo() {
    _todoidlist.removeLast();
    notifyListeners();
  }
//  void hapusTodo(TodoModel todo){
//   _todoidlist = _todoidlist)
//   notifyListeners()
//  }
}
