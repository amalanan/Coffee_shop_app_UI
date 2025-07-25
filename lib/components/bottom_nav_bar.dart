import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({super.key, required this.onTapChange});

  void Function(int)? onTapChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: GNav(
        onTabChange: onTapChange,
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBorderRadius: 20,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: [
          GButton(icon: Icons.home, text: 'Shop'),
          GButton(icon: Icons.shopping_bag_outlined, text: 'Cart'),
        ],
      ),
    );
  }
}
