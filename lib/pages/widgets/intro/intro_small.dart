import 'package:Muheeb_Mehraj/constants/style.dart';
import 'package:Muheeb_Mehraj/widgets/bold_text.dart';
import 'package:Muheeb_Mehraj/widgets/regular_text.dart';
import 'package:flutter/material.dart';

import 'action_button.dart';
import 'avatar_widget.dart';

class IntroSmall extends StatelessWidget {
  const IntroSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              child: AvatarImage()),
          Container(
            padding: EdgeInsets.only(left: 24, right: 24),
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
                SizedBox(height: 16,),
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
                SizedBox(height: 32,),
                ActionButtons()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
