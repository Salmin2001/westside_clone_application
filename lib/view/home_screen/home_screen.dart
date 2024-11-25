// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:westside_clone/utils/color_constants.dart';
import 'package:westside_clone/utils/images_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/home men.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
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
          body: Stack(
            children: [
              // // Left arrow
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Padding(
              //     padding: EdgeInsets.only(left: 16),
              //     child: IconButton(
              //       icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30),
              //       onPressed: () {

              //       },
              //     ),
              //   ),
              // ),
              //   Right Arrow
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios_sharp,
                        color: ColorConstants.BLACKOG, size: 25),
                    onPressed: () {},
                  ),
                ),
              ),
              // Overlay content
              Positioned(
                bottom: 100,
                left: 16,
                right: 16,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'AUTUMNAL LAYERS',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.BLACKOG,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Casual Layers For The Season.',
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorConstants.BLACKOG,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );

    // Scaffold(
    //  backgroundColor: Colors.transparent,
    //   appBar: AppBar(
    //     centerTitle: true,
    //     backgroundColor: Colors.transparent,
    //     elevation: 0,
    //     title: Image.asset(
    //       ImageConstants.MYAPPLOGO,
    //       color: ColorConstants.BLACKOG,
    //       width: 150,
    //     ),
    //     actions: [
    //       IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined,size: 30,)),
    //     ],
    //   ),
    //   body: Stack(
    //     children: [
    //       // Background Image
    //       Container(
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //             image: AssetImage('assets/images/home men.png'),
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //       ),
    //       // Overlay content
    //       Positioned(
    //         bottom: 60,
    //         left: 16,
    //         right: 16,
    //         child: Column(
    //           children: [
    //             SizedBox(height: 20),
    //             Text(
    //               'AUTUMNAL LAYERS',
    //               style: TextStyle(
    //                 fontSize: 30,
    //                 fontWeight: FontWeight.bold,
    //                 color: Colors.white,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //             Text(
    //               'Casual Layers For The Season.',
    //               style: TextStyle(
    //                 fontSize: 16,
    //                 color: Colors.white70,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}