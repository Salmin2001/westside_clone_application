// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:westside_clone/utils/images_constants.dart';
import 'package:westside_clone/view/Bottom_navigationBar/bottom_navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomnavigationBarScreen()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImageConstants.MYAPPLOGO,
          height: 100,
          width: 200,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
