// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:westside_clone/utils/color_constants.dart';
import 'package:westside_clone/utils/images_constants.dart';
import 'package:westside_clone/view/login_screen/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Hello!',
                    style: GoogleFonts.roboto(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Add details',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.login),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'Log in / Sign Up',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.square_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'WestStyleClub',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text(
              'Store locator',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.call_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'Contact Us',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  'About Us',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Terms of Use',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Privacy Policy',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
