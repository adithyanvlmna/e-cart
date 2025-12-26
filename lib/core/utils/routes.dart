import 'package:e_mart/screens/bottom_navbar_screen.dart';
import 'package:e_mart/screens/login_screen.dart';
import 'package:e_mart/screens/product_details_screen.dart';
import 'package:e_mart/screens/product_list_screen.dart';
import 'package:e_mart/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String login="/login";
  static const String bottomNav="/bottomNav";
  static const String productLscreen="/productLscreen";
  static const String prodDscreen="/prodDscreen";
  static const String splash="/splash";
  static  Map<String, Widget Function(BuildContext)> routes={
    Routes.login:(_)=> LoginScreen(),
    Routes.bottomNav:(_)=> BottomNavbarScreen(),
    Routes.productLscreen:(_)=> ProductListScreen(),
    Routes.prodDscreen:(_)=> ProductDetailScreen(),
     Routes.splash:(_)=> SplashScreen()
    
  };
}