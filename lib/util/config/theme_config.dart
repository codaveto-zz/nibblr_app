import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nibblr_app/util/constants/sizes.dart';

ThemeData buildThemeData(BuildContext context) {
  final primaryColor = _generateMaterialColor(Colors.lightBlueAccent);
  return ThemeData(
      primarySwatch: primaryColor,
      cursorColor: primaryColor,
      accentColor: Colors.white,
      buttonTheme: ButtonThemeData(
        minWidth: double.infinity,
        height: CustomSize.large + CustomSize.medium,
        textTheme: ButtonTextTheme.accent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CustomSize.large),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle:
            GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.bold, letterSpacing: 1.25, color: primaryColor),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 0.5),
        ),
      ),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5),
        headline2: GoogleFonts.poppins(fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
        headline3: GoogleFonts.poppins(fontSize: 46, fontWeight: FontWeight.w400),
        headline4: GoogleFonts.poppins(fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        headline5: GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400),
        headline6: GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
        subtitle1: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
        subtitle2: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        bodyText1: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.5),
        bodyText2: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        button: GoogleFonts.poppins(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.25,
        ),
        caption: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        overline: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
      ));
}

MaterialColor _generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int _tintValue(int value, double factor) => max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) =>
    Color.fromRGBO(_tintValue(color.red, factor), _tintValue(color.green, factor), _tintValue(color.blue, factor), 1);

int _shadeValue(int value, double factor) => max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    _shadeValue(color.red, factor), _shadeValue(color.green, factor), _shadeValue(color.blue, factor), 1);
