import 'package:ecampus_v2/constants.dart';
import 'package:ecampus_v2/size_config.dart';
import 'package:flutter/material.dart';

ThemeData mainTheme() {
  return ThemeData(
    fontFamily: 'Montserrat',
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    scaffoldBackgroundColor: Color.fromRGBO(18, 18, 18, 1),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(
      color: kTextColor,
    ),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kPrimaryColor,
    titleTextStyle: TextStyle(
      color: kTextColor,
      fontSize: getProportionateScreenHeight(30),
      fontFamily: "Montserrat",
    ),
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(
      color: kPrimaryLightColor,
    ),
  );
}
