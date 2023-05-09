import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/button.dart';
import 'package:mini_project_resepkita/component/card_isi_resep.dart';
import 'package:mini_project_resepkita/style/colorsstyle.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../createresep/models/create_model.dart';
import '../createresep/widgets/info_widget.dart';
import '../provider/createresep_provider.dart';

class BuatResep extends StatelessWidget {
  final String title;
  final TodoModel? todo;
  final TodoModel? todo2;
  //////////
  final TodoModel? todo3;
  const BuatResep(
      {Key? key, required this.title, this.todo, this.todo2, this.todo3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _todoController = TextEditingController();
    TextEditingController _todo2Controller = TextEditingController();
    ///////////
    TextEditingController _todo3Controller = TextEditingController();

    if (todo != null) {
      _todoController.text = todo!.todo;
    }
    if (todo2 != null) {
      _todo2Controller.text = todo2!.todo2;
    }
    if (todo3 != null) {
      _todo2Controller.text = todo3!.todo3;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat resep'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CardIsiResep(
                labelText: "Bahan Masakan",
                hinText: "apa saja bahan masakannya",
                controler: _todoController,
              ),
              CardIsiResep(
                labelText: "Bahan Masakan",
                hinText: "apa saja bahan masakannya",
                controler: _todo2Controller,
              ),
              CardIsiResep(
                labelText: "Bahan Masakan",
                hinText: "apa saja bahan masakannya",
                controler: _todo3Controller,
              ),
              SizedBox(
                height: 50,
              ),
              PrimaryButton(
                  text: 'Simpan',
                  onPressed: () {
                    if (_todoController.text.isEmpty &&
                        _todo2Controller.text.isEmpty &&
                        _todo3Controller.text.isEmpty) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const InfoWidget(
                                title: "Upss!!",
                                content: "Anda belum membuat resep");
                          });
                    } else {
                      if (todo2 != null && todo != null && todo3 != null) {
                      } else {
                        const uuid = Uuid();
                        Provider.of<TodoListProvider>(context, listen: false)
                            .addTodo(TodoModel(
                                id: uuid.v4(),
                                todo: _todoController.text,
                                todo2: _todo2Controller.text,
                                todo3: _todo3Controller.text));
                      }
                      Navigator.pop(context);
                    }
                  },
                  height: 30,
                  width: 100)
            ],
          ),
        ),
      ),
    );
  }
}
