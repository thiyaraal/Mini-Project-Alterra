import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/generalcomponet/button.dart';
import 'package:mini_project_resepkita/provider/createresep_provider.dart';
import 'package:mini_project_resepkita/screen/buatresep.dart';
import 'package:mini_project_resepkita/screen/detailsendiri.dart';
import 'package:provider/provider.dart';

import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';

class DaftarResepScreen extends StatefulWidget {
  const DaftarResepScreen({Key? key}) : super(key: key);

  @override
  State<DaftarResepScreen> createState() => _DaftarResepScreenState();
}

class _DaftarResepScreenState extends State<DaftarResepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorStyle().backogrundbody,
        appBar: AppBar(
          backgroundColor: ColorStyle().card,
          elevation: 0.0,
          title: Text(
            "Daftar Resep Anda",
            style: TextCustome().mediumpink.copyWith(
                letterSpacing: 2, fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        //conusmer untuk mendapatkan reseplist provider yang telah kita buat
        body: Consumer<ResepListProvider>(
          builder: (context, resepProvider, child) {
            return ListView(
                padding: const EdgeInsets.all(20.0),
                children: resepProvider.resepList.isNotEmpty
                    ? resepProvider.resepList.map((oke) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        oke.judul,
                                        style: TextCustome()
                                            .mediumpink
                                            .copyWith(fontSize: 18),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: IconButton(
                                          onPressed: () {
                                            resepProvider.removeResep();
                                          },
                                          icon: Icon(
                                              Icons.delete)),
                                    ),
                                    // const PopupMenuExample()
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      oke.bahanawal.length >= 140
                                          ? "${oke.bahanawal.toString().substring(0, 140)}...."
                                          : oke.bahanawal,
                                      style: TextCustome().regular.copyWith(
                                          fontSize: 12,
                                          color: ColorStyle().grey)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      oke.bahantambahan.length >= 140
                                          ? "${oke.bahantambahan.toString().substring(0, 140)}..."
                                          : oke.bahantambahan,
                                      style: TextCustome().regular.copyWith(
                                          fontSize: 12,
                                          color: ColorStyle().grey)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      oke.caramasak.length >= 140
                                          ? "${oke.caramasak.toString().substring(0, 140)}..."
                                          : oke.caramasak,
                                      style: TextCustome().regular.copyWith(
                                          fontSize: 12,
                                          color: ColorStyle().grey)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: PrimaryButton(
                                          text: "Lihat Resep",
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      DetailResepAnda(
                                                          judul: oke.judul,
                                                          bahantambahan:
                                                              oke.bahantambahan,
                                                          caramasak:
                                                              oke.caramasak,
                                                          bahanawal:
                                                              oke.bahanawal)),
                                            );
                                          },
                                          height: 30,
                                          width: 150)),
                                )
                              ],
                            ),
                          ),
                        );
                      }).toList()
                    : [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/image/logoresep.png',
                                  height: 250,
                                  width: 250,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16, bottom: 16),
                                  child: Text(
                                      'Kamu belum membuat resep masakan, Yuk buat resep masakan disini',
                                      style: TextCustome().light),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]);
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: ColorStyle().primarypink,
          foregroundColor: Colors.black,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return BuatResep(title: 'Buat resep');
                });
          },
          icon: Icon(
            Icons.create,
            color: ColorStyle().white,
          ),
          label: Text(
            'Buat Resep',
            style: TextCustome().medium.copyWith(color: ColorStyle().white),
          ),
        ));
  }
}
