import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    primaryColor: Color(0xffF5F5F5),
    focusColor: Color(0xff0589F3),
    hoverColor: Color(0xffF8F8F8),
    canvasColor: Color(0xffdfdfdf),
    dividerColor: Colors.grey,
    disabledColor: darkHeaderClr,
    cardColor: Colors.grey,
    errorColor: Color(0xffe83329),
    fontFamily: GoogleFonts.getFont('Montserrat').fontFamily,
  );

  static final dark = ThemeData(
    scaffoldBackgroundColor: darkGreyClr,
    brightness: Brightness.dark,
    primaryColor: Color(0xff4d4747),
    focusColor: Color(0xff0589f3),
    hoverColor: Color(0xff4d4747),
    canvasColor: darkHeaderClr,
    dividerColor: Colors.orangeAccent,
    cardColor: Colors.white,
    errorColor: Color(0xffe83329),
    fontFamily: GoogleFonts.getFont('Montserrat').fontFamily,
  );
}
