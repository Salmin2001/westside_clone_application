// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:westside_clone/utils/color_constants.dart';

class CustomHomeCard extends StatelessWidget {
  const CustomHomeCard({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRect(
          child: Image.asset(
            image,
            height: 250,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: ColorConstants.BLACKOG,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
