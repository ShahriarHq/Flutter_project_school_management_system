import 'package:flutter/cupertino.dart';
import 'package:school_management_system/screens/home_screen/home_screen.dart';
import 'package:school_management_system/screens/login_screen/login_screen.dart';
import 'package:school_management_system/screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName:(context) => LoginScreen(),
  HomeScreen.routeName:(context) => HomeScreen()
};
