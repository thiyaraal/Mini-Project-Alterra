import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/createresep/widgets/add_edit.dart';
import 'package:mini_project_resepkita/provider/apijson.dart';
import 'package:mini_project_resepkita/provider/createresep_provider.dart';
import 'package:mini_project_resepkita/screen/buatresep.dart';
import 'package:provider/provider.dart';

import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';

class DaftarResepScreen extends StatefulWidget {
  DaftarResepScreen({Key? key}) : super(key: key);

  @override
  State<DaftarResepScreen> createState() => _DaftarResepScreenState();
}

class _DaftarResepScreenState extends State<DaftarResepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resep Saya')),
      //conusmer untuk mendapatkan todolist provider yang telah kita buat
      body: Consumer<TodoListProvider>(
        builder: (context, todoProvider, child) {
          return ListView(
              padding: const EdgeInsets.all(20.0),
              children: todoProvider.todoidList.isNotEmpty
                  ? todoProvider.todoidList.map((oke) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                oke.todo,
                                style: TextCustome()
                                    .mediumpink
                                    .copyWith(fontSize: 18),
                              ),
                              SizedBox(height: 12),
                              Text(
                                  oke.todo2.length >= 100
                                      ? oke.todo2.toString().substring(0, 100) +
                                          "....read more"
                                      : oke.todo2,
                                  style: TextCustome().regular.copyWith(
                                      fontSize: 12, color: ColorStyle().grey)),
                              Text(
                                  oke.todo3.length >= 100
                                      ? oke.todo3.toString().substring(0, 100) +
                                          "....read more"
                                      : oke.todo3,
                                  style: TextCustome().regular.copyWith(
                                      fontSize: 12, color: ColorStyle().grey)),
                            ],
                          ),
                        ),
                      );
                    }).toList()
                  : [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: const Center(
                          child: Text(
                            "Buat resep",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const BuatResep(
                    title: "Buat resep",
                  )),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
