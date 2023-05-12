import 'package:flutter/material.dart';

import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';

class DetailResepAnda extends StatelessWidget {
  final String judul;
  final String bahanawal;
  final String bahantambahan;
  final String caramasak;
  const DetailResepAnda(
      {Key? key,
      required this.bahantambahan,
      required this.caramasak,
      required this.bahanawal,
      required this.judul})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            judul,
            style: TextCustome().mediumpink.copyWith(
                letterSpacing: 2, fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Bahan Masakan',
                    style: TextCustome().medium.copyWith(fontSize: 18),
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
                              bahanawal,
                              style: TextCustome().regular,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Bahan Tambahan',
                    style: TextCustome().medium.copyWith(fontSize: 18),
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
                            const SizedBox(height: 8),
                            Text(
                              bahantambahan,
                              style: TextCustome().regular,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Cara Memasak',
                    style: TextCustome().medium.copyWith(fontSize: 18),
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
                              caramasak,
                              style: TextCustome().regular,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
