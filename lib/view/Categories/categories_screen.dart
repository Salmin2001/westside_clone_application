// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:westside_clone/dummy_db.dart';
import 'package:westside_clone/utils/color_constants.dart';
import 'package:westside_clone/utils/images_constants.dart';
import 'package:westside_clone/view/Categories/widgets/custom_card.dart';
import 'package:westside_clone/view/Categories/widgets/custom_curve_edit_card.dart';
import 'package:westside_clone/view/Categories/widgets/custom_home_card.dart';
import 'package:westside_clone/view/Categories/widgets/custom_item_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              // section 1 : all categories
              allCatogeries(),
              SizedBox(height: 40),
              // Section 2 : ethnic wear
              ethnicWear(),
              SizedBox(height: 30),
              // section 3 : Western wear
              westernWear(),
              SizedBox(height: 30),
              // section 4 : Mens wear
              mensWear(),
              SizedBox(height: 30),
              // section 5 : Curve Edits
              curveEdit(),
              SizedBox(height: 30),
              // section 6 : Kids Wear
              kidsWear(),
              SizedBox(height: 30),
              // section 7 : Foot Wear
              footWear(),
              SizedBox(height: 30),
              // section 8 : Home
              homeAccessories(),
              SizedBox(height: 15),
              // section 9 : Beauty
              beautySection(),
              SizedBox(height: 30),
              // section 10 : HandBangs
              handbagSection(),
            ],
          ),
        ),
      ),
    );
  }

  Padding handbagSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Handbags",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.BLACKOG,
                  fontSize: 13),
            ),
          ),
          SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                height: 420,
                child: Image.asset(
                  "assets/images/Handbags.webp",
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Handbags",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.BLACKOG,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding beautySection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Beauty",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.BLACKOG,
                  fontSize: 13),
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              DummyDb.beautySection.length,
              (index) => CustomCard(
                image: DummyDb.beautySection[index]["image"],
                title: DummyDb.beautySection[index]["text"],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding homeAccessories() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Home",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.BLACKOG,
                  fontSize: 12),
            ),
          ),
          SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: DummyDb.homeAccessories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: .65,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => CustomHomeCard(
              image: DummyDb.homeAccessories[index]["image"],
              text: DummyDb.homeAccessories[index]["title"],
            ),
          )
        ],
      ),
    );
  }

  Padding footWear() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Footwear",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.BLACKOG,
                  fontSize: 13),
            ),
          ),
          SizedBox(height: 8),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                DummyDb.footWear.length,
                (index) => CustomCard(
                  image: DummyDb.footWear[index]["image"],
                  title: DummyDb.footWear[index]["text"],
                ),
              )),
        ],
      ),
    );
  }

  Padding kidsWear() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Kids Wear",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.BLACKOG,
                  fontSize: 12),
            ),
          ),
          SizedBox(height: 8),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                DummyDb.kidsWear.length,
                (index) => CustomCard(
                  image: DummyDb.kidsWear[index]["image"],
                  title: DummyDb.kidsWear[index]["text"],
                ),
              )),
        ],
      ),
    );
  }

  Padding curveEdit() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Curve Edit",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.BLACKOG,
                  fontSize: 12),
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              DummyDb.curveEdit.length,
              (index) => CustomCurveEditCard(
                imageurl: DummyDb.curveEdit[index]["imageUrl"],
                title: DummyDb.curveEdit[index]["title"],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding mensWear() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Men's Wear",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.BLACKOG,
                  fontSize: 12),
            ),
          ),
          SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: DummyDb.mensWear.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.63),
            itemBuilder: (context, index) => CustomItemCard(
              imageUrl: DummyDb.mensWear[index]["imageUrl"],
              title: DummyDb.mensWear[index]["title"],
            ),
          )
        ],
      ),
    );
  }

  Padding westernWear() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Women's Western Wear",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.BLACKOG,
                  fontSize: 12),
            ),
          ),
          SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: DummyDb.womensWesterncWear.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.63),
            itemBuilder: (context, index) => CustomItemCard(
              imageUrl: DummyDb.womensWesterncWear[index]["imageUrl"],
              title: DummyDb.womensWesterncWear[index]["title"],
            ),
          )
        ],
      ),
    );
  }

  Padding ethnicWear() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Women's Ethnic Wear",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.BLACKOG,
                  fontSize: 12),
            ),
          ),
          SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: DummyDb.womensEthnicWear.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.63),
            itemBuilder: (context, index) => CustomItemCard(
              imageUrl: DummyDb.womensEthnicWear[index]["imageUrl"],
              title: DummyDb.womensEthnicWear[index]["title"],
            ),
          )
        ],
      ),
    );
  }

  SingleChildScrollView allCatogeries() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          DummyDb.featuredItemsList.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage(DummyDb.featuredItemsList[index]["imageUrl"]),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  DummyDb.featuredItemsList[index]["name"],
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.BLACKOG,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
