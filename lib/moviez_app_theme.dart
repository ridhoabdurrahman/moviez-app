import 'package:flutter/material.dart';
import 'package:moviez_app/constants.dart';

class MoviezAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      dividerColor: kGrayColor100,
      backgroundColor: kWhiteColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: "Avenir-Book",
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: kBlueColor,
          fontSize: 28,
          fontFamily: "Avenir-Black",
        ),
        headline2: TextStyle(
          color: kBlueColor,
          fontSize: 24,
          fontFamily: "Avenir-Black",
        ),
        headline3: TextStyle(
          color: kBlueColor,
          fontSize: 20,
          fontFamily: "Avenir-Heavy",
        ),
        headline4: TextStyle(
          color: kWhiteColor,
          fontSize: 16,
          fontFamily: "Avenir-Medium",
        ),
        headline5: TextStyle(
          color: kBlueColor,
          fontSize: 14,
          fontFamily: "Avenir-Heavy",
        ),
        headline6: TextStyle(
          fontSize: 12,
          fontFamily: "Avenir-Heavy",
          color: kBlueColor,
        ),
        bodyText1: TextStyle(
          fontSize: 16,
          color: kGrayColor900,
          fontFamily: "Avenir-Book",
        ),
        bodyText2: TextStyle(
          fontSize: 16,
          color: kBlueColor,
          fontFamily: "Avenir-Roman",
        ),
      ),
    );
  }
}
