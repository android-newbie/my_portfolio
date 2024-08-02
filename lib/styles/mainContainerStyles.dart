import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';

class Maincontainerstyles {
  
  static TextStyle piyush(double? size) => GoogleFonts.openSans(
    fontSize:size??72 ,
    fontWeight: FontWeight.w800, // Use w800 for Extra Bold
    color: CustomColor.white,
  );

  static TextStyle verma(double? size) => GoogleFonts.openSans(
    fontSize: size??72,
    fontWeight: FontWeight.w800, // Use w800 for Extra Bold
    color: CustomColor.red,
  );

  static TextStyle iDesign(double? size) => GoogleFonts.inter(
    fontSize: size??24,
    fontWeight: FontWeight.w300, // Use w800 for Extra Bold
    color: CustomColor.white90,
  );

  
}
