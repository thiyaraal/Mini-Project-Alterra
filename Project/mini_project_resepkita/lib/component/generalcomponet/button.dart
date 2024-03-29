
import 'package:flutter/material.dart';
import '../../style/colorsstyle.dart';
import '../../style/fontstyle.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  double? height;
  double? width;
  final String text;
  Function() onPressed;
  ButtonStyle? style;
  PrimaryButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.height,
      required this.width, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorStyle().primaryblack, //, Background color
            ),
        onPressed: onPressed,
        child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextCustome().medium.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorStyle().white)),
      ),
    );
  }
}

// ignore: must_be_immutable
class SecondaryButton extends StatelessWidget {
  double? height;
  double? width;
  final String text;
  Function() onPressed;
  SecondaryButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        style: ButtonStyle(
            side: MaterialStatePropertyAll(
                BorderSide(color: ColorStyle().primarypink))),
        onPressed: onPressed,
        child: Text(text,
            textAlign: TextAlign.start,
            style: TextCustome().medium.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: ColorStyle().primaryblack)),
      ),
    );
  }
}
