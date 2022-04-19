import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xFF5D9CEC);
  static Color colorLightGreen = Color(0xFFDFECDB);
  static Color colorRed = Color(0xFFEC4B4B);
  static Color colorGreen = Color(0xFF61E757);
  static Color colorblack = Color(0xFF303030);
  static Color colorwhite = Color(0xFFFFFFFF);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      colorScheme: ColorScheme(
        primary: lightPrimary,
        onPrimary: colorwhite,
        secondary: colorLightGreen,
        onSecondary: colorwhite,
        background: colorLightGreen,
        onBackground: lightPrimary,
        error: colorRed,
        onError: colorRed,
        surface: colorwhite,
        onSurface: Colors.black,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: colorLightGreen,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(10),
        ),
          backgroundColor: lightPrimary
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
        color: lightPrimary,
        elevation: 0,
        iconTheme: IconThemeData(color: colorwhite),
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: colorwhite,
          fontWeight: FontWeight.w700,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          color: lightPrimary,
          fontWeight: FontWeight.w400,
        ),
        bodyText1: TextStyle(
          fontSize: 12,
          color: colorblack,
          fontWeight: FontWeight.w400,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: lightPrimary,
          unselectedItemColor: Colors.grey),
      bottomSheetTheme: BottomSheetThemeData(
  shape: RoundedRectangleBorder(
  borderRadius:BorderRadius.circular(15),
      ),)


  );



}
