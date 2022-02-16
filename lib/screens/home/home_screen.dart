import 'package:ebizz_infotech_project/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';

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
            MaterialPageRoute(builder: (context) => const CartScreen()),
          ),
          icon: const Icon(
            Icons.shopping_cart_rounded,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
