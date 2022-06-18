import 'package:ecampus_v2/main_theme.dart';
import 'package:ecampus_v2/routs.dart';
import 'package:ecampus_v2/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(eCampus_v2());

class eCampus_v2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "eCampus",
      theme: mainTheme(),
      //initialRoute: kSplashScreenEnable ? SplashScreen.routeName : ,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
