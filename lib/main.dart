import 'package:ebizz_infotech_project/screens/auth/login/login_screen.dart';
import 'package:ebizz_infotech_project/utils/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ebizz Test App',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      // scaffoldMessengerKey: Utils.messengerKey,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            print("waiting");
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print("error in data fetch");
            return Center(child: Text("Something went wrong!"));
          } else if (snapshot.hasData) {
            print("data fetching");
            return HomeScreen();
          } else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
