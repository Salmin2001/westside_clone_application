// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:westside_clone/utils/color_constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.image,
    required this.title,
  });
  final String? image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRect(
          child: Image(
            image: AssetImage(image!),
            height: 165,
            width: 120,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Text(
          title!,
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
