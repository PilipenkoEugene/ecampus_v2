import 'package:ecampus_v2/screens/sign_in/sign_in_screen.dart';
import 'package:ecampus_v2/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
