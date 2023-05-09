import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/createresep/widgets/info_widget.dart';
import 'package:mini_project_resepkita/provider/apijson.dart';
import 'package:mini_project_resepkita/provider/createresep_provider.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../models/create_model.dart';

class AddEditResepWidget extends StatelessWidget {
  final String title;
  final TodoModel? todo;
  final TodoModel? todo2;
  final TodoModel? todo3;
  const AddEditResepWidget(
      {Key? key, required this.title, this.todo, this.todo2, this.todo3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _todoController = TextEditingController();
    TextEditingController _todo2Controller = TextEditingController();
    TextEditingController _todo3Controller = TextEditingController();

    if (todo != null) {
      _todoController.text = todo!.todo;
    }
    if (todo2 != null) {
      _todo2Controller.text = todo2!.todo2;
    }
    if (todo3 != null) {
      _todo3Controller.text = todo3!.todo3;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _todoController,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  isDense: true,
                  fillColor: Colors.grey.shade100,
                  labelText: 'todo',
                  hintText: 'masukkan resep'),
            ),
            TextField(
              controller: _todo2Controller,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  isDense: true,
                  fillColor: Colors.grey.shade100,
                  labelText: 'todo',
                  hintText: 'masukkan resep'),
            ),
            TextButton(
                onPressed: () {
                  {
                    if (todo != null && todo2 != null && todo3 != null) {
                    } else {
                      const uuid = Uuid();
                      Provider.of<TodoListProvider>(context, listen: false)
                          .addTodo(TodoModel(
                              id: uuid.v4(),
                              todo: _todoController.text,
                              todo2: _todo2Controller.text,
                              todo3: _todoController.text));
                    }
                    Navigator.pop(context);
                  }
                },
                child: Text('simpan'))
          ],
        ),
      ),
    );
  }
}
