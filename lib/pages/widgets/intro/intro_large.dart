import 'package:Muheeb_Mehraj/constants/style.dart';
import 'package:Muheeb_Mehraj/widgets/bold_text.dart';
import 'package:Muheeb_Mehraj/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'action_button.dart';
import 'avatar_widget.dart';

class IntroWidgetLarge extends StatelessWidget {
  const IntroWidgetLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: primary,
      height: _height - 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: _width / 2,
            padding: EdgeInsets.only(left: 50, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                BoldText(
                  text: "Hi, i am Muheeb Mehraj",
                  size: 40,
                  color: Colors.black,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  height: 16,
                ),
                RegularText(
                  text: "I am an Android Enthusiast. Love creating apps that "
                      "people can enjoy and use. I have been on the "
                      "Native Android since the dawn of civilization "
                      "i.e, 4 years!. I love a little bit of everything, "
                      "Singing, Reading, Writing - i am not good at any "
                      "of it though, that includes Reading.",
                  size: 16,
                  color: bodyTextColor,
                ),
                SizedBox(
                  height: 32,
                ),
                ActionButtons()
              ],
            ),
          ),
          Container(width: _width / 2, child: AvatarImage())
        ],
      ),
    );
  }
}
