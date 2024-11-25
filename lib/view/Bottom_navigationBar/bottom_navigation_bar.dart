// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:westside_clone/utils/color_constants.dart';
import 'package:westside_clone/view/Bags_Screen/bag_screen.dart';
import 'package:westside_clone/view/Categories/categories_screen.dart';
import 'package:westside_clone/view/home_screen/home_screen.dart';
import 'package:westside_clone/view/profile_screen/profile_screen.dart';
import 'package:westside_clone/view/search_screen/search_screen.dart';

class BottomnavigationBarScreen extends StatefulWidget {
  const BottomnavigationBarScreen({super.key});

  @override
  State<BottomnavigationBarScreen> createState() =>
      _BottomnavigationBarScreenState();
}

class _BottomnavigationBarScreenState extends State<BottomnavigationBarScreen> {
  int selectedIndex = 0;
  final List screens = [
    HomeScreen(),
    CategoriesScreen(),
    SearchScreen(),
    BagScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: ColorConstants.BLACKOG),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined, color: ColorConstants.BLACKOG),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: ColorConstants.BLACKOG),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,
                color: ColorConstants.BLACKOG),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: ColorConstants.BLACKOG),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
