import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF6C0DDB);
const accentColor = const Color(0xFF000000);
const greyColor = const Color(0xFF444444);
const lightPinkColor = const Color(0xFFCBC2D6);
const darkPinkColor = const Color(0xFFa292b7);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      button: TextStyle(
        fontFamily: "InterRegular",
      ),
      caption: TextStyle(
        fontFamily: "InterRegular",
      ),
      display1: TextStyle(
        fontFamily: "InterRegular",
      ),
      display2: TextStyle(
        fontFamily: "InterRegular",
      ),
      display3: TextStyle(
        fontFamily: "InterRegular",
      ),
      display4: TextStyle(
        fontFamily: "InterRegular",
      ),
      headline: TextStyle(
        fontFamily: "InterRegular",
      ),
      overline: TextStyle(
        fontFamily: "InterRegular",
      ),
      subhead: TextStyle(
        fontFamily: "InterRegular",
      ),
      subtitle: TextStyle(
        fontFamily: "InterRegular",
      ),
      title: TextStyle(
        fontFamily: "InterRegular",
      ),
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
    primaryColorDark: primaryColor,
    primaryColorLight: primaryColor,
    cursorColor: primaryColor,
    textSelectionHandleColor: primaryColor,
    scaffoldBackgroundColor: Color(0xFFFAFAFA),
    backgroundColor: Color(0xFFFAFAFA),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}
