import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/generalcomponet/button.dart';
import 'package:mini_project_resepkita/screen/profilescreen.dart';

import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({Key? key}) : super(key: key);

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle().backogrundbody,
      appBar: AppBar(
        backgroundColor: ColorStyle().card,
        elevation: 0.0,
        title: Text(
          "Tersimpan",
          style: TextCustome().mediumpink.copyWith(
              letterSpacing: 2, fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
