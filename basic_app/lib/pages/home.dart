import 'package:basic_app/components/bottom_nav_bar.dart';
import 'package:basic_app/consts.dart';
import 'package:basic_app/pages/cart.dart';
import 'package:basic_app/pages/shop.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index, BuildContext context) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const Cartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavbar(
        onTabChange: (index) => navigateBottomBar(index, context),
      ),
    );
  }
}
