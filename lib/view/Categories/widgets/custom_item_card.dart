// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:westside_clone/utils/color_constants.dart';

class CustomItemCard extends StatelessWidget {

  const CustomItemCard({
    super.key,
    required this.imageUrl,
    required this.title,
  });
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRect(
          child: Image(
            image: AssetImage(imageUrl),
            height: 170,
            width: 120,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
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
