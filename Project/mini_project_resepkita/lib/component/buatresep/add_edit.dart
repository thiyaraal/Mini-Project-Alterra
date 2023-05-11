import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/provider/createresep_provider.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../models/create_model.dart';

class AddEditResepWidget extends StatelessWidget {
  final String title;
  final TodoModel? todo;
  final TodoModel? todo2;
  final TodoModel? todo3;
  final TodoModel? judul;
  const AddEditResepWidget(
      {Key? key,
      required this.title,
      this.todo,
      this.todo2,
      this.todo3,
      this.judul})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController todoController = TextEditingController();
    TextEditingController todo2Controller = TextEditingController();
    TextEditingController todo3Controller = TextEditingController();
    TextEditingController judulController = TextEditingController();
    if (judul != null) {
      judulController.text = judul!.judul;
    }
    if (todo != null) {
      todoController.text = todo!.bahanmasakan;
    }
    if (todo2 != null) {
      todo2Controller.text = todo2!.todo2;
    }
    if (todo3 != null) {
      todo3Controller.text = todo3!.todo3;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: todoController,
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
              controller: todo2Controller,
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
                    if (todo != null &&
                        todo2 != null &&
                        todo3 != null &&
                        judul != null) {
                    } else {
                      const uuid = Uuid();
                      Provider.of<TodoListProvider>(context, listen: false)
                          .addTodo(TodoModel(
                              id: uuid.v4(),
                              judul: judulController.text,
                              bahanmasakan: todoController.text,
                              todo2: todo2Controller.text,
                              todo3: todoController.text));
                    }
                    Navigator.pop(context);
                  }
                },
                child: const Text('simpan'))
          ],
        ),
      ),
    );
  }
}
