import 'package:flutter/material.dart';
import 'package:mini_project_resepkita/component/button.dart';
import 'package:mini_project_resepkita/screen/profilescreen.dart';

import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';
import 'buatresep.dart';

class SaveScreen extends StatefulWidget {
  SaveScreen({Key? key}) : super(key: key);

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
              letterSpacing: 2, fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Semua Resep Kamu',
                style: TextCustome().medium.copyWith(fontSize: 18),
              ),
              PrimaryButton(
                  text: "Buat resep",
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile())),
                  height: 30,
                  width: 100)
            ],
          )),
    );
  }
}
