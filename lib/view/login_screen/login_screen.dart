// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:westside_clone/utils/color_constants.dart';
import 'package:westside_clone/utils/images_constants.dart';
import 'package:westside_clone/view/home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "CREATE AN ACCOUNT",
                  style: GoogleFonts.roboto(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'First Name*',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Last Name*',
                ),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: 'Mobile Number*'),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email*',
                ),
              ),
              SizedBox(height: 16.0),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConstants.BLACKOG,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'CREATE CUSTOMER',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: ColorConstants.WHITE),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('JOIN OUR NEWSLETTER',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Your email address',
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      'SHOP',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(color: ColorConstants.BLACKOG),
                    SizedBox(height: 15),
                    Text(
                      'SITES AND STORES',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      color: ColorConstants.BLACKOG,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'POLICIES',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(color: ColorConstants.BLACKOG),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
