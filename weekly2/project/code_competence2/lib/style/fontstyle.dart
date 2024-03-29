import 'package:code_competence/style/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCustome{
  TextStyle primary = GoogleFonts.poppins(
    fontWeight: FontWeight.w300,
    fontSize: 14,
    color: ColorStyle().primaryblack
  );

  TextStyle secondary = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 14,
     color: ColorStyle().primaryblack
  );
}