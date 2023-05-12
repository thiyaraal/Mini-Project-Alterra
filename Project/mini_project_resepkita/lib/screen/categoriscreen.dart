import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/generalcomponet/button.dart';
import 'package:provider/provider.dart';

import '../provider/recomend_api_json_provider.dart';
import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';
import 'detailscreen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ResepKamu>(context);
    // prov.ubahList("makananringan");

    return Scaffold(
          backgroundColor: ColorStyle().backogrundbody,
        appBar:  AppBar(
           backgroundColor: ColorStyle().card,
          elevation: 0.0,
          title: Text(
            "Kategori Resep",
            style: TextCustome().mediumpink.copyWith(
                letterSpacing: 2, fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryButton(
                    text: "Makanan Populer",
                    onPressed: () => prov.ubahList('makananpopuler'),
                    height: 60,
                    width: 100),
                PrimaryButton(
                    text: "Makanan Berat",
                    onPressed: () => prov.ubahList('makananberat'),
                    height: 60,
                    width: 100),
                PrimaryButton(
                    text: "Makanan Ringan",
                    onPressed: () => prov.ubahList('makananringan'),
                    height: 60,
                    width: 100)
              ],
            ),
          ),
          ...List.generate(
            prov.data["data"]!.length,
            (index) {
              var item = prov.data["data"]![index];
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailResepNusantara(item: item)),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20, top: 8,bottom: 8),
                    child: Card(
                      color: ColorStyle().card,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(item['img'])),
                            title: Text(item['nama'],
                                style: TextCustome().medium.copyWith(
                                    color: ColorStyle().primarypink,
                                    fontSize: 16)),
                            subtitle: Text(item['asal'],
                                style: TextCustome().regular.copyWith(
                                    fontSize: 12, color: ColorStyle().grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                                item['desc'].toString().length >= 100
                                    ? "${item['desc'].toString().substring(0, 100)}....read more"
                                    : item['desc'],
                                style: TextCustome().regular.copyWith(
                                    fontSize: 12, color: ColorStyle().grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: ColorStyle().primarypink,
                                    ),
                                    Text('${item['like'].toString()}.k',
                                        style: TextCustome().regular),
                                  ],
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: ColorStyle()
                                          .primarypink //, Background color
                                      ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              DetailResepNusantara(item: item)),
                                    );
                                  },
                                  child: Text('lihat resep',
                                      style: TextCustome()
                                          .regular
                                          .copyWith(color: ColorStyle().white)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ));
            },
          ),
        ]));
  }
}
