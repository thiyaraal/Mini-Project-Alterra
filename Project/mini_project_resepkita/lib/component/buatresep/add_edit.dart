import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/provider/createresep_provider.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../models/create_model.dart';

class AddEditResepWidget extends StatelessWidget {
  final String title;
  final ResepModel? bahanawal;
  final ResepModel? bahantambahan;
  final ResepModel? caramasak;
  final ResepModel? judul;
  const AddEditResepWidget(
      {Key? key,
      required this.title,
      this.bahanawal,
      this.bahantambahan,
      this.caramasak,
      this.judul})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController bahanawalController = TextEditingController();
    TextEditingController bahantambahanController = TextEditingController();
    TextEditingController caramasakController = TextEditingController();
    TextEditingController judulController = TextEditingController();
    if (judul != null) {
      judulController.text = judul!.judul;
    }
    if (bahanawal != null) {
      bahanawalController.text = bahanawal!.bahanawal;
    }
    if (bahantambahan != null) {
      bahantambahanController.text = bahantambahan!.bahantambahan;
    }
    if (caramasak != null) {
      caramasakController.text = caramasak!.caramasak;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: bahanawalController,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  isDense: true,
                  fillColor: Colors.grey.shade100,
                  labelText: '  Masukkan Resep',
                  hintText: 'masukkan resep'),
            ),
            TextField(
              controller: bahantambahanController,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  isDense: true,
                  fillColor: Colors.grey.shade100,
                  labelText: '  Masukkan Resep',
                  hintText: 'masukkan resep'),
            ),
            TextButton(
                onPressed: () {
                  {
                    if (bahanawal != null &&
                        bahantambahan != null &&
                        caramasak != null &&
                        judul != null) {
                    } else {
                      const uuid = Uuid();
                      Provider.of<ResepListProvider>(context, listen: false)
                          .addResep(ResepModel(
                              id: uuid.v4(),
                              judul: judulController.text,
                              bahanawal: bahanawalController.text,
                              bahantambahan: bahantambahanController.text,
                              caramasak: bahanawalController.text));
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
