import 'package:flutter/material.dart';

import '../../style/colorsstyle.dart';

// ignore: must_be_immutable
class CardIsiResep extends StatelessWidget {
  TextEditingController controler;
  final String labelText;
  final String hinText;
  final double? height;
  final double? width;
  CardIsiResep(
      {Key? key,
      required this.labelText,
      required this.hinText,
      required this.controler,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: EdgeInsets.all(20),
      height: height,
      width: width,
      child: Card(
        color: ColorStyle().card,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: controler,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: InputBorder.none,

                    // filled: true,
                    // isDense: true,
                    labelText: labelText,
                    hintText: hinText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
