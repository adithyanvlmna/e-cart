import 'package:e_mart/screens/bottom_navbar_screen.dart';
import 'package:e_mart/screens/login_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String login="/login";
  static const String bottomNav="/bottomNav";
  static  Map<String, Widget Function(BuildContext)> routes={
    Routes.login:(_)=> LoginScreen(),
    Routes.bottomNav:(_)=> BottomNavbarScreen()
    
  };
}