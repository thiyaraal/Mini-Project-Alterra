import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project_resepkita/style/colorsstyle.dart';
import 'package:mini_project_resepkita/style/fontstyle.dart';

// ignore: must_be_immutable
class ProfileMenu extends StatelessWidget {
  ProfileMenu({
    Key? key,
    required this.text,
    required this.icons,
    this.press,
  }) : super(key: key);

  final String text;
  IconData? icons;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          iconColor: ColorStyle().primaryblack,
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: ColorStyle().card,
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(icons),
            const SizedBox(width: 20),
            Expanded(child: Text(text, style: TextCustome().regular.copyWith(fontSize: 14))),
            const Icon(Icons.arrow_forward_ios, ),
          ],
        ),
      ),
    );
  }
}
