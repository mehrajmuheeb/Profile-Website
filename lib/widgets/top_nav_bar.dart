import 'package:Muheeb_Mehraj/constants/controllers.dart';
import 'package:Muheeb_Mehraj/constants/style.dart';
import 'package:Muheeb_Mehraj/helpers/responsive_layout_widget.dart';
import 'package:Muheeb_Mehraj/widgets/regular_text.dart';
import 'package:flutter/material.dart';

AppBar getNavBar(BuildContext context) => AppBar(
      backgroundColor: primary,
      elevation: 5,
      leading:
          Container(child: Image.asset("assets/images/dancing_potato.gif")),
      title: Padding(
          padding: const EdgeInsets.all(16),
          child: ResponsiveLayout.isSmallScreen(context)
              ? _getSmallTitle()
              : _getLargeTitle()),
    );

Widget _getSmallTitle() {
  return Row(
    children: [
      Expanded(child: Container()),
      InkWell(
        onTap: () {
          homePageController.onLinkedInClick();
        },
        child: Image.asset(
          "assets/images/linkedin.png",
          width: 20,
          height: 20,
        ),
      ),
      InkWell(
        onTap: () {
          homePageController.onTwitterClick();
        },
        child: SizedBox(
          width: 20,
        ),
      ),
      InkWell(
        onTap: () {},
        child: Image.asset(
          "assets/images/twitter.png",
          width: 20,
          height: 20,
        ),
      ),
      SizedBox(
        width: 20,
      ),
      InkWell(
        onTap: () {
          homePageController.onInstagramClick();
        },
        child: Image.asset(
          "assets/images/instagram.png",
          width: 20,
          height: 20,
        ),
      ),
    ],
  );
}

Widget _getLargeTitle() {
  return Row(
    children: [
      Expanded(child: Container()),
      InkWell(
        onTap: () {
          homePageController.onLinkedInClick();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/linkedin.png",
              width: 20,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RegularText(
                text: "LinkedIn",
                weight: FontWeight.bold,
                size: 16,
              ),
            )
          ],
        ),
      ),
      SizedBox(
        width: 20,
      ),
      InkWell(
        onTap: () {
          homePageController.onTwitterClick();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/twitter.png",
              width: 20,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RegularText(
                text: "Twitter",
                weight: FontWeight.bold,
                size: 16,
              ),
            )
          ],
        ),
      ),
      SizedBox(
        width: 20,
      ),
      InkWell(
        onTap: () {
          homePageController.onInstagramClick();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/instagram.png", width: 20, height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RegularText(
                text: "Instagram",
                weight: FontWeight.bold,
                size: 16,
              ),
            )
          ],
        ),
      ),
    ],
  );
}
