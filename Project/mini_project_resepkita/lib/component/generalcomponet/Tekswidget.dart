import 'package:flutter/material.dart';

import '../../style/fontstyle.dart';

class WidgetText extends StatelessWidget {
  final String text;
  TextStyle? style;
  EdgeInsets? padding;
  WidgetText({Key? key, required this.text, this.style, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Text(
        text,
        style: TextCustome().medium.copyWith(fontSize: 18),
      ),
    );
  }
}
