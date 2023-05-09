import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';

class DetailResepNusantara extends StatefulWidget {
  final dynamic item;

  DetailResepNusantara({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailResepNusantara> createState() => _DetailResepNusantaraState();
}

class _DetailResepNusantaraState extends State<DetailResepNusantara> {
  Icon ikon = Icon(
    Icons.star,
    color: Colors.orange,
    size: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorStyle().backogrundbody,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            widget.item['nama'],
            style: TextCustome().medium.copyWith(
                letterSpacing: 2, fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GFImageOverlay(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxFit: BoxFit.cover,
                      height: 240,
                      width: 350,
                      image: NetworkImage(widget.item['img'])),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Text(
                            'Masakan ${widget.item['asal']}',
                            style: TextCustome().medium.copyWith(fontSize: 14),
                          ),
                        ),
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
                  Container(
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
                            SizedBox(height: 8),
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
                  Container(
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
                            SizedBox(height: 8),
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
                  // Container(
                  //   width: double.infinity,
                  //   child: Card(
                  //     color: ColorStyle().card,
                  //     clipBehavior: Clip.antiAlias,
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(12),
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text(
                  //             'Bahan masakan',
                  //             style:
                  //                 TextCustome().medium.copyWith(fontSize: 14),
                  //           ),
                  //           SizedBox(height: 8),
                  //           ...List.generate(
                  //               widget.item["bumbuhalus"].length as int,
                  //               (index) => Text(
                  //                   "• ${widget.item['bumubuhalus'][index]}",
                  //                   style: TextCustome().regular.copyWith(
                  //                       //         fontSize: 12, color: ColorStyle().grey))),
                  //                       )))
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),

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
                          SizedBox(height: 8),
                          Text(widget.item['caramasak'],
                              style: TextCustome().regular.copyWith(
                                  fontSize: 12, color: ColorStyle().grey)),
                        ],
                      ),
                    ),
                  ),
                  // Card(
                  //   color: ColorStyle().card,
                  //   clipBehavior: Clip.antiAlias,
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(12),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text(
                  //           'Cara Masak',
                  //           style: TextCustome().medium.copyWith(fontSize: 14),
                  //         ),
                  //         SizedBox(height: 8),
                  //         Text(widget.item['caramasak'],
                  //             style: TextCustome().regular.copyWith(
                  //                 fontSize: 12, color: ColorStyle().grey)),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ));
  }
}