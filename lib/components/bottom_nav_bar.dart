import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: GNav(
            color: Colors.grey[600],
            activeColor: Colors.grey[700],
            tabActiveBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.grey.shade100,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 15,
            onTabChange: (value) => onTabChange!(value),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Shop",
              ),
              GButton(icon: Icons.shopping_bag_rounded, text: "Cart"),
            ]),
      ),
    );
  }
}
