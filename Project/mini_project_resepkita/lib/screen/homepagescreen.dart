import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/generalcomponet/Tekswidget.dart';
import 'package:mini_project_resepkita/component/generalcomponet/carausel.dart';
import 'package:mini_project_resepkita/provider/recomend_api_json_provider.dart';
import 'package:provider/provider.dart';
import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';
import 'detailscreen.dart';

class HomePageResepNusantara extends StatefulWidget {
  const HomePageResepNusantara({Key? key}) : super(key: key);

  @override
  State<HomePageResepNusantara> createState() => _HomePageResepNusantaraState();
}

class _HomePageResepNusantaraState extends State<HomePageResepNusantara> {
  @override
  void initState() {
    Future.microtask(() {
      // Provider.of<ResepKita>(context, listen: false).initialData();
      Provider.of<ResepKamu>(context, listen: false).initialData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: ColorStyle().backogrundbody,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 10),
              child: Image.asset(
                'assets/image/logoresep.png',
                height: 50,
                width: 50,
              ),
            ),
            Text(
              "ResepKita",
              style: TextCustome().medium.copyWith(
                  letterSpacing: 2, fontSize: 32, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0), child: body(context)),
    );
  }

  body(BuildContext context) {
    final prov = Provider.of<ResepKamu>(context);
    if (prov.data == null) {
      return const CircularProgressIndicator();
    } else {
      return ListView(children: [
        const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            hintText: 'Search Tech Talk',
          ),
        ),

        Carausel(),

        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            'Resep Terpopuler',
            style: TextCustome().medium.copyWith(fontSize: 18),
          ),
        ),
        //////////////uda pake provider/////////////////
        ...List.generate(
          prov.data['data']!.length,
          (index) {
            var item = prov.data['data']![index];
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DetailResepNusantara(item: item)),
                  );
                },
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
                                color: ColorStyle().primarypink, fontSize: 16)),
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
                ));
          },
        ),
      ]);
    }
  }
}
