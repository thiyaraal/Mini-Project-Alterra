
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/colorsstyle.dart';

class TextCustome{
  TextStyle medium = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: ColorStyle().primaryblack
  );

    TextStyle mediumpink = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: ColorStyle().primarypink
  );

  TextStyle regular = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12,
     color: ColorStyle().primaryblack
  );

    TextStyle light = GoogleFonts.poppins(
    fontWeight: FontWeight.w300,
    fontSize: 12,
     color: ColorStyle().primaryblack
  );
  
}