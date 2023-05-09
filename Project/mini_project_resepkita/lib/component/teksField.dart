// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../style/colorsstyle.dart';


// ignore: must_be_immutable
class InputField extends StatelessWidget {
  TextEditingController? controler;
  final String hinText;
  // String Function(String?)? validator;
  InputField({
    Key? key,
    required this.hinText,
    required this.controler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 272,
      child: TextFormField(
        controller: controler,
        decoration: InputDecoration(
            hintText: hinText,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorStyle().grey))),
      ),
    );
  }
}
