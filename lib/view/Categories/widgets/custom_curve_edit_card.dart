// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:westside_clone/utils/color_constants.dart';

class CustomCurveEditCard extends StatelessWidget {
  const CustomCurveEditCard({
    super.key,required this.imageurl,required this.title
  });
 final String imageurl;
 final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRect(
          child: Image(
            image: AssetImage(imageurl),
            height: 170,
            width: 195,
            fit: BoxFit.contain,
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
