// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:westside_clone/utils/color_constants.dart';
import 'package:westside_clone/utils/images_constants.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          ImageConstants.MYAPPLOGO,
          color: ColorConstants.BLACKOG,
          width: 150,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.bars,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Shopping Bag',
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Wishlist',
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProgressStep(number: "1", isActive: true, step: "Bag"),
                DottedLine(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  lineLength: 60,
                  lineThickness: 2,
                  dashLength: 30,
                  dashColor: Colors.black,
                ),
                ProgressStep(number: "2", isActive: false, step: "Details"),
                DottedLine(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  lineLength: 60,
                  lineThickness: 2,
                  dashLength: 30,
                  dashColor: Colors.black,
                ),
                ProgressStep(number: "3", isActive: false, step: "Payment"),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Shopping bag (0)",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Spacer(),
          Text(
            "Your Bag is currently empty....",
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorConstants.BLACKOG,
            ),
          ),
          SizedBox(height: 40),
          Text(
            "CONTINUE SHOPPING",
            style: GoogleFonts.roboto(
              color: ColorConstants.BLACKOG,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class ProgressStep extends StatelessWidget {
  final bool isActive;
  final String step;
  final String number;

  const ProgressStep(
      {required this.isActive, required this.step, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isActive ? ColorConstants.BLACKOG : ColorConstants.GREYSHD4,
            shape: BoxShape.rectangle,
          ),
          child: Text(
            number,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // SizedBox(width: 5),
        Text(
          step,
          style: TextStyle(
            fontSize: 16,
            color: isActive ? ColorConstants.BLACKOG : ColorConstants.GREYSHD5,
          ),
        ),
      ],
    );
  }
}
