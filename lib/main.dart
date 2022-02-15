import 'package:ebizz_infotech_project/screens/auth/login/login_screen.dart';
import 'package:ebizz_infotech_project/screens/auth/signup/signup_screen.dart';
import 'package:ebizz_infotech_project/screens/cart/cart_screen.dart';
import 'package:ebizz_infotech_project/utils/theme.dart';
import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ebizz Test App',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
