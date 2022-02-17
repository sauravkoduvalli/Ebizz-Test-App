import 'package:ebizz_infotech_project/screens/cart/cart_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  final user = FirebaseAuth.instance.currentUser!;

  final List<Map> myProducts =
      List.generate(50, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: _appbar(context),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.purple,
      //         ),
      //         child: Container(),
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: myProducts.length,
          itemBuilder: (BuildContext ctx, index) {
            return Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text("Product $index"),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      title: const Text("Home"),
      automaticallyImplyLeading: false,
      // leading: new IconButton(
      //   icon: new Icon(Icons.menu),
      //   onPressed: () => scaffoldKey.currentState!.openDrawer(),
      // ),
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
