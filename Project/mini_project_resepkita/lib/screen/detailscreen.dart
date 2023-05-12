// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mini_project_resepkita/component/generalcomponet/Tekswidget.dart';

import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';

class DetailResepNusantara extends StatefulWidget {
  final dynamic item;

  const DetailResepNusantara({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailResepNusantara> createState() => _DetailResepNusantaraState();
}

class _DetailResepNusantaraState extends State<DetailResepNusantara> {
  Icon ikon = const Icon(
    Icons.star,
    color: Colors.orange,
    size: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorStyle().backogrundbody,
        appBar: AppBar(
           backgroundColor: ColorStyle().card,
          elevation: 0.0,
          title: Text(
            widget.item['nama'],
            style: TextCustome().mediumpink.copyWith(
                letterSpacing: 2, fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GFImageOverlay(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxFit: BoxFit.cover,
                      height: 240,
                      width: 350,
                      image: NetworkImage(widget.item['img'])),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        WidgetText(
                            text: 'Masakan ${widget.item['asal']}',
                            style: const TextStyle(fontSize: 14)),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: ColorStyle().primarypink,
                            ),
                            Text('${widget.item['like'].toString()}.k',
                                style: TextCustome()
                                    .regular
                                    .copyWith(fontSize: 14)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: ColorStyle().card,
                      clipBehavior: Clip.antiAlias,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bahan masakan',
                              style:
                                  TextCustome().medium.copyWith(fontSize: 14),
                            ),
                            const SizedBox(height: 8),
                            ...List.generate(
                                widget.item["bahan"].length as int,
                                (index) => Text(
                                    "• ${widget.item['bahan'][index]}",
                                    style: TextCustome().regular.copyWith(
                                        //         fontSize: 12, color: ColorStyle().grey))),
                                        )))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: ColorStyle().card,
                      clipBehavior: Clip.antiAlias,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bahan tambahan',
                              style:
                                  TextCustome().medium.copyWith(fontSize: 14),
                            ),
                            const SizedBox(height: 8),
                            ...List.generate(
                                widget.item["bumbuhalus"].length as int,
                                (index) => Text(
                                    "• ${widget.item['bumbuhalus'][index]}",
                                    style: TextCustome().regular.copyWith(
                                        //         fontSize: 12, color: ColorStyle().grey))),
                                        )))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: ColorStyle().card,
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bahan tambahan',
                            style: TextCustome().medium.copyWith(fontSize: 14),
                          ),
                          const SizedBox(height: 8),
                          Text(widget.item['caramasak'],
                              style: TextCustome().regular.copyWith(
                                  fontSize: 12, color: ColorStyle().grey)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
