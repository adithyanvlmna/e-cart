import 'package:e_mart/core/utils/routes.dart';
import 'package:e_mart/provider/login_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E cart',
        initialRoute: Routes.bottomNav,
        routes: Routes.routes,
      ),
    );
  }
}

