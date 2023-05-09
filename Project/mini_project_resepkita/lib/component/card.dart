import 'package:flutter/material.dart';
import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';

class ItemCard extends StatelessWidget {
  final String judul;
  final String desc;
  final String pict;
  const ItemCard(
      {Key? key, required this.judul, required this.desc, required this.pict})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeBox = SizedBox(height: 10);
    return SizedBox(
      height: 230,
      width: 180,
      child: Card(
          color: ColorStyle().secondarypink,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  pict,
                  fit: BoxFit.cover,
                ),
                sizeBox,
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      judul,
                      style: TextCustome().medium.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                    )),
                Text(
                    textAlign: TextAlign.start,
                    desc,
                    style: TextCustome().medium.copyWith(fontSize: 10)),
              ],
            ),
          )),
    );
  }
}
