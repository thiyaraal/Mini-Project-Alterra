import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/button.dart';
import 'package:provider/provider.dart';
import '../component/drawer.dart';
import '../provider/apijson.dart';
import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';
import 'detailscreen.dart';
import 'package:getwidget/getwidget.dart';

class HomePageResepNusantara extends StatefulWidget {
  const HomePageResepNusantara({Key? key}) : super(key: key);

  @override
  State<HomePageResepNusantara> createState() => _HomePageResepNusantaraState();
}

class _HomePageResepNusantaraState extends State<HomePageResepNusantara> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<ResepKita>(context, listen: false).initialData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: ColorStyle().backogrundbody,
      appBar: AppBar(
        actions: [
          menuList(context),
        ],
        leading: IconButton(
            onPressed: () {
              _scaffoldkey.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.list,
              color: ColorStyle().primaryblack,
              size: 30,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "ResepKita",
          style: TextCustome().medium.copyWith(
              letterSpacing: 2, fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
      // appBar: AppBar(
      //   title: const Text('Pertemuan12'),
      // ),
      drawer: Drawer(backgroundColor: ColorStyle().white, child: Drawerlist()),
      body: Padding(padding: const EdgeInsets.all(16.0), child: body(context)),
    );
  }

  menuList(BuildContext context) {
    final prov = Provider.of<ResepKita>(context);

    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            child: ListTile(
              onTap: () => prov.ubahList('hp'),
              leading: const Icon(Icons.phone),
              title: const Text('hp'),
            ),
          ),
          const PopupMenuDivider(),
          PopupMenuItem(
            child: ListTile(
              onTap: () {
                print('laptop');
                prov.ubahList('laptop');
                Navigator.pop(context);
              },
              leading: const Icon(Icons.laptop),
              title: const Text('laptop'),
            ),
          ),
        ];
      },
    );
  }

  body(BuildContext context) {
    final prov = Provider.of<ResepKita>(context);
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
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            'Kategori',
            style: TextCustome().medium.copyWith(fontSize: 18),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PrimaryButton(text: "Makanan Berat", onPressed: () => prov.ubahList('makananberat'),height: 100, width: 200),
            PrimaryButton(text: "Makanan Ringan", onPressed: () => prov.ubahList('makananringan'),height: 100, width: 200)
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            'Resep Masakan dan Minuman',
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
                                ? item['desc'].toString().substring(0, 100) +
                                    "....read more"
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
                                      builder: (_) => DetailResepNusantara(item: item)),
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
        )
      ]);
    }
  }
}
