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
  final ResepModel? bahanawal;
  final ResepModel? bahantambahan;
  //////////
  final ResepModel? judul;

  //////////
  final ResepModel? caramasak;
  const BuatResep(
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
    ///////////
    TextEditingController caramasakController = TextEditingController();
    /////////////
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
      bahantambahanController.text = caramasak!.caramasak;
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
                      height: 150,
                      width: 400,
                      labelText: "Bahan Masakan",
                      hinText: "apa saja Bahan masakannya",
                      controler: bahanawalController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Text(
                        'Bahan Tambahan',
                        style: TextCustome().medium.copyWith(fontSize: 18),
                      ),
                    ),
                    CardIsiResep(
                      height: 150,
                      width: 400,
                      labelText: "Bahan Tambahan",
                      hinText: "apa saja Bahan tambahannya",
                      controler: bahantambahanController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Text(
                        'Cara Memasak',
                        style: TextCustome().medium.copyWith(fontSize: 18),
                      ),
                    ),
                    CardIsiResep(
                      height: 200,
                      width: 400,
                      labelText: "Cara Memasak",
                      hinText: "Bagaimana Cara Memasaknya",
                      controler: caramasakController,
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
                              if (bahanawalController.text.isEmpty &&
                                  bahantambahanController.text.isEmpty &&
                                  caramasakController.text.isEmpty &&
                                  judulController.text.isEmpty) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const InfoWidget(
                                          title: "Upss!!",
                                          content: "Anda belum membuat resep");
                                    });
                              } else {
                                if (bahantambahan != null &&
                                    bahanawal != null &&
                                    caramasak != null &&
                                    judul != null) {
                                } else {
                                  const uuid = Uuid();
                                  Provider.of<ResepListProvider>(context,
                                          listen: false)
                                      .addResep(ResepModel(
                                          id: uuid.v4(),
                                          judul: judulController.text,
                                          bahanawal: bahanawalController.text,
                                          bahantambahan: bahantambahanController.text,
                                          caramasak: caramasakController.text));
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
