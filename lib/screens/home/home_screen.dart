import 'package:ebizz_infotech_project/screens/cart/cart_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: Container(),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      title: const Text("Home"),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () => Navigator.push(
            context,
            PageTransition(
              child: CartScreen(),
              type: PageTransitionType.fade,
            ),
          ),
          icon: const Icon(
            Icons.shopping_cart_rounded,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () => FirebaseAuth.instance.signOut(),
          icon: const Icon(
            Icons.power_settings_new_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
