import 'package:flutter/material.dart';

import '../style/colorsstyle.dart';

class CardIsiResep extends StatelessWidget {
    TextEditingController controler;
    final String labelText;
    final String hinText;
  CardIsiResep({Key? key, required this.labelText, required this.hinText, required this.controler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                // margin: EdgeInsets.all(20),
                height: 100,
                width: 400,
                child: Card(
                  color: ColorStyle().card,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                          controller: controler,
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              isDense: true,
                              fillColor: Colors.grey.shade100,
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