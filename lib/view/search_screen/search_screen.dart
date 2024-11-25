// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TextFormField(
          decoration: InputDecoration(
            suffixIcon: Icon(CupertinoIcons.camera),
            prefixIcon: Icon(CupertinoIcons.search),
            hintText: "Search for .......",
            enabledBorder: UnderlineInputBorder() 
          ),
        ),
      ),
    );
  }
}
