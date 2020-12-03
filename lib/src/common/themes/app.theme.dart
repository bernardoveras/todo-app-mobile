import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF6C0DDB);
const primaryDarkColor = const Color(0xFF480993);
const primaryLightColor = const Color(0xFF9233ff);
const accentColor = const Color(0xFF000000);
const greyColor = const Color(0xFF444444);
const lightPinkColor = const Color(0xFFCBC2D6);
const darkPinkColor = const Color(0xFFa292b7);
const backgroundColor = const Color(0xFFFAFAFA);

ThemeData appTheme() {
  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: primaryColor,
    ),
    brightness: brightness,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 1,
      foregroundColor: Colors.white,
      hoverElevation: 0,
      splashColor: primaryDarkColor.withOpacity(0.2),
      highlightElevation: 4,
    ),
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
    scaffoldBackgroundColor: backgroundColor,
    backgroundColor: backgroundColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}
