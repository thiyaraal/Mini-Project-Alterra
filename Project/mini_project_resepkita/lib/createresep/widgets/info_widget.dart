import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/button.dart';
import 'package:mini_project_resepkita/createresep/resepscreen.dart';
import 'package:mini_project_resepkita/screen/buatresep.dart';
import 'package:mini_project_resepkita/screen/thiyarastrees.dart';
import 'package:mini_project_resepkita/style/colorsstyle.dart';
import 'package:mini_project_resepkita/style/fontstyle.dart';

class InfoWidget extends StatelessWidget {
  final String title;
  final String content;
  const InfoWidget({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorStyle().card,
      actions: [
        PrimaryButton(text: "Okee", onPressed: () => Navigator.pop(context), height: 30, width: 70)
      ],
      title: Text(title, style: TextCustome().mediumpink.copyWith( fontSize: 24
      ), textAlign: TextAlign.center),
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              content, style: TextCustome().regular.copyWith(),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
