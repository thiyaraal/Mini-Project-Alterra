import 'package:flutter/material.dart';

class ListResepSaya extends StatefulWidget {
  ListResepSaya({Key? key}) : super(key: key);

  @override
  State<ListResepSaya> createState() => _ListResepSayaState();
}

class _ListResepSayaState extends State<ListResepSaya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Resep Saya"),),);
  }
}