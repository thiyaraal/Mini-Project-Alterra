import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/generalcomponet/button.dart';
import 'package:mini_project_resepkita/component/buatresep/card_isi_resep.dart';
import 'package:mini_project_resepkita/style/colorsstyle.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../component/models/create_model.dart';
import '../component/buatresep/info_widget.dart';
import '../provider/createresep_provider.dart';
import '../style/fontstyle.dart';

class BuatResep extends StatelessWidget {
  final String title;
  final TodoModel? todo;
  final TodoModel? todo2;
  //////////
  final TodoModel? judul;

  //////////
  final TodoModel? todo3;
  const BuatResep(
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
    ///////////
    TextEditingController todo3Controller = TextEditingController();
    /////////////
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
      todo2Controller.text = todo3!.todo3;
    }
    return Scaffold(
        backgroundColor: ColorStyle().backogrundbody,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Buat Resep",
            style: TextCustome().mediumpink.copyWith(
                letterSpacing: 2, fontSize: 32, fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Text(
                        'Judul Masakan',
                        style: TextCustome().medium.copyWith(fontSize: 18),
                      ),
                    ),
                    CardIsiResep(
                      labelText: "Nama masakan",
                      hinText: "apa nama masakan anda?",
                      controler: judulController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Text(
                        'Bahan Masakan',
                        style: TextCustome().medium.copyWith(fontSize: 18),
                      ),
                    ),
                    CardIsiResep(
                      labelText: "Bahan Masakan",
                      hinText: "apa saja bahan masakannya",
                      controler: todoController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Text(
                        'Bahan Tambahan',
                        style: TextCustome().medium.copyWith(fontSize: 18),
                      ),
                    ),
                    CardIsiResep(
                      labelText: "Bahan Masakan",
                      hinText: "apa saja bahan masakannya",
                      controler: todo2Controller,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Text(
                        'Cara Memasak',
                        style: TextCustome().medium.copyWith(fontSize: 18),
                      ),
                    ),
                    CardIsiResep(
                      labelText: "Bahan Masakan",
                      hinText: "apa saja bahan masakannya",
                      controler: todo3Controller,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SecondaryButton(
                            text: 'Batal',
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            height: 30,
                            width: 100),
                        PrimaryButton(
                            text: 'Simpan',
                            onPressed: () {
                              if (todoController.text.isEmpty &&
                                  todo2Controller.text.isEmpty &&
                                  todo3Controller.text.isEmpty &&
                                  judulController.text.isEmpty) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const InfoWidget(
                                          title: "Upss!!",
                                          content: "Anda belum membuat resep");
                                    });
                              } else {
                                if (todo2 != null &&
                                    todo != null &&
                                    todo3 != null &&
                                    judul != null) {
                                } else {
                                  const uuid = Uuid();
                                  Provider.of<TodoListProvider>(context,
                                          listen: false)
                                      .addTodo(TodoModel(
                                          id: uuid.v4(),
                                          judul: judulController.text,
                                          bahanmasakan: todoController.text,
                                          todo2: todo2Controller.text,
                                          todo3: todo3Controller.text));
                                }
                                Navigator.pop(context);
                              }
                            },
                            height: 30,
                            width: 100),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
